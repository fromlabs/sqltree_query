// Copyright (c) 2016, Roberto Tassi. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import "dart:async";

import "package:collection/collection.dart";
import "package:logging/logging.dart";

import "package:sqltree/sqltree.dart" as sql;
import "package:sqltree_schema/sqltree_schema.dart" as schema;
import "query.dart";
import "query_connector.dart";
import "query_connector_impl.dart";

final _libraryLogger = new Logger("sqltree_query");

abstract class BaseQueryManagerImpl<Q extends Query> {
  final QueryConnector queryConnector;

  BaseQueryManagerImpl(this.queryConnector);

  Q prepareSelect({QueryParameters initialParameters}) =>
      prepare(sql.select(), initialParameters: initialParameters);

  Q prepareInsert({QueryParameters initialParameters}) =>
      prepare(sql.insert(), initialParameters: initialParameters);

  Q prepareUpdate({QueryParameters initialParameters}) =>
      prepare(sql.update(), initialParameters: initialParameters);

  Q prepareDelete({QueryParameters initialParameters}) =>
      prepare(sql.delete(), initialParameters: initialParameters);

  Q prepare(sql.SqlStatement statement, {QueryParameters initialParameters}) =>
      createQuery(statement, initialParameters);

  Future<QueryResult> execute(Q query) async {
    var watcher = new Stopwatch()..start();

    var namedSql = sql.format(query.statement);

    _libraryLogger.fine(() => "Query: ${sql.prettify(namedSql)}");

    var convertedStatement = sql.convert(namedSql);

    QueryParametersImpl queryParameters = query.parameters;

    var parameters = mapMap(queryParameters.parameters,
        key: (parameter, QueryParameter queryParameter) {
      if (parameter is num) {
        throw new UnsupportedError("Indexed parameter unsupported $parameter");
      } else {
        return getColumnIdentifier(parameter);
      }
    });

    _libraryLogger.fine(() => "Parameters: $parameters");

    List<QueryParameter> positionalParameters = convertedStatement
        .applyNamedParameterValues(parameters) as List<QueryParameter>;

    if (query.statement is sql.SqlSelectStatement) {
      sql.SqlSelectStatement selectStatement = query.statement;

      QueryResultColumnTypesImpl queryResultColumnTypes =
          query.resultColumnTypes;

      var columns = selectStatement.selectClause.children
          .where((node) => node.isEnabled)
          .toList(growable: false);

      Map<String, QueryValueType> namedColumnTypes = {};
      queryResultColumnTypes.columnTypes
          .forEach((column, QueryValueType columnType) {
        if (column is! num) {
          namedColumnTypes[getColumnIdentifier(column)] = columnType;
        }
      });

      List<QueryValueType> indexedColumnTypes = [];
      Map<String, int> columnIdentifierIndexes = {};
      var i = 0;
      for (var column in columns) {
        var columnType;
        var columnIdentifier = getColumnIdentifier(column, throwsError: false);
        if (columnIdentifier != null) {
          columnType = namedColumnTypes[columnIdentifier];
        } else {
          columnIdentifier = getColumnIdentifier(i);
        }

        var positionalColumnType = queryResultColumnTypes.columnTypes[i];

        if (columnType == null) {
          columnType = positionalColumnType;
        } else if (positionalColumnType != null) {
          throw new ArgumentError(
              "Column type already defined $columnIdentifier in position $i");
        }

        columnIdentifierIndexes[columnIdentifier] = i;
        indexedColumnTypes.add(columnType);
        i++;
      }

      var rows = await queryConnector.query(
          convertedStatement.positionalParameterSql,
          parameters: positionalParameters,
          resultColumnTypes: indexedColumnTypes);

      if (_libraryLogger.isLoggable(Level.FINEST)) {
        var buffer = new StringBuffer();
        buffer.writeln("Result: ");
        var l = 0;
        for (var row in rows) {
          buffer.writeln("  $l: $row");
          l++;
        }
        _libraryLogger.finest(buffer);
      }

      _libraryLogger.finer(() =>
          "Result size: ${rows.length} [${watcher.elapsed.inMilliseconds} ms]");

      return createSelectQueryResult(query, columns, columnIdentifierIndexes,
          indexedColumnTypes, namedColumnTypes, rows);
    } else {
      var rows = await queryConnector.update(
          convertedStatement.positionalParameterSql,
          parameters: positionalParameters);

      int affectedRows = rows.length;
      int lastInsertId = rows.isNotEmpty ? rows.last : null;

      _libraryLogger.finer(() =>
          "Update result: ${lastInsertId != null ? "last insert id $lastInsertId, " : ""}affected rows $affectedRows [${watcher.elapsed.inMilliseconds} ms]");

      return createUpdateQueryResult(query, affectedRows, lastInsertId);
    }
  }

  Q createQuery(sql.SqlStatement statement, QueryParameters initialParameters);

  QueryResult createSelectQueryResult(
      Q query,
      List<sql.SqlNode> columns,
      Map<String, int> columnIdentifierIndexes,
      List<QueryValueType> indexedColumnTypes,
      Map<String, QueryValueType> namedColumnTypes,
      List<List> rows);

  QueryResult createUpdateQueryResult(
      Q query, int affectedRows, int lastInsertId);

  convertValue(value, {QueryValueType type}) =>
      (queryConnector as BaseQueryConnectorImpl)
          .convertValue(value, type: type);

  QueryValueType getValueType(value) =>
      (queryConnector as BaseQueryConnectorImpl).getValueType(value);

  String getColumnIdentifier(column, {bool throwsError: true}) {
    if (column is String) {
      return column;
    } else if (column is int) {
      return column.toString();
    } else if (column is schema.SqlColumn) {
      return column.qualifiedName;
    } else if (column is sql.SqlNode) {
      if (column.type == sql.types.AS) {
        return column.children[1].rawExpression;
      } else if (column.isRawNode) {
        return column.rawExpression;
      }
    }

    if (throwsError) {
      throw new ArgumentError("Unknown column identifier for: $column");
    } else {
      return null;
    }
  }
}

class QueryManagerImpl extends BaseQueryManagerImpl<Query>
    implements QueryManager {
  QueryManagerImpl(QueryConnector queryConnector) : super(queryConnector);

  @override
  Query<sql.SqlSelectStatement> prepareSelect(
          {QueryParameters initialParameters}) =>
      super.prepareSelect(initialParameters: initialParameters);

  @override
  Query<sql.SqlInsertStatement> prepareInsert(
          {QueryParameters initialParameters}) =>
      super.prepareInsert(initialParameters: initialParameters);

  @override
  Query<sql.SqlUpdateStatement> prepareUpdate(
          {QueryParameters initialParameters}) =>
      super.prepareUpdate(initialParameters: initialParameters);

  @override
  Query<sql.SqlDeleteStatement> prepareDelete(
          {QueryParameters initialParameters}) =>
      super.prepareDelete(initialParameters: initialParameters);

  @override
  Query<sql.SqlStatement /*S*/ > prepare/*<S extends sql.SqlStatement>*/(
          sql.SqlStatement /*S*/ statement,
          {QueryParameters initialParameters}) =>
      super.prepare(statement, initialParameters: initialParameters);

  @override
  Query createQuery(
          sql.SqlStatement statement, QueryParameters initialParameters) =>
      new QueryImpl(this, statement, initialParameters);

  @override
  QueryResult createSelectQueryResult(
          Query query,
          List<sql.SqlNode> columns,
          Map<String, int> columnIdentifierIndexes,
          List<QueryValueType> indexedColumnTypes,
          Map<String, QueryValueType> namedColumnTypes,
          List<List> rows) =>
      new QueryResultImpl.select(query as QueryImpl, columns,
          columnIdentifierIndexes, indexedColumnTypes, namedColumnTypes, rows);

  @override
  QueryResult createUpdateQueryResult(
          Query query, int affectedRows, int lastInsertId) =>
      new QueryResultImpl.update(
          query as QueryImpl, affectedRows, lastInsertId);
}

abstract class BaseQueryImpl<P extends QueryParameters,
    C extends QueryResultColumnTypes> {
  final BaseQueryManagerImpl queryManager;

  final sql.SqlStatement statement;

  P _parameters;

  C _resultColumnTypes;

  BaseQueryImpl(this.queryManager, this.statement, P initialParameters) {
    _parameters = createQueryParameters(initialParameters);
    _resultColumnTypes = createQueryResultColumnTypes();
  }

  P createQueryParameters(P initialParameters);

  C createQueryResultColumnTypes();

  P get parameters => _parameters;

  C get resultColumnTypes => _resultColumnTypes;

  Query clone({bool freeze}) =>
      queryManager.prepare(statement.clone(freeze: freeze),
          initialParameters: _parameters) as Query;

  Future<QueryResult> execute() => queryManager.execute(this as Query);
}

class QueryImpl extends BaseQueryImpl<QueryParameters, QueryResultColumnTypes>
    implements Query {
  QueryImpl(QueryManagerImpl queryManager, sql.SqlStatement statement,
      QueryParameters initialParameters)
      : super(queryManager, statement, initialParameters);

  @override
  QueryParameters createQueryParameters(QueryParameters initialParameters) =>
      new QueryParametersImpl(this, initialParameters);

  @override
  QueryResultColumnTypes createQueryResultColumnTypes() =>
      new QueryResultColumnTypesImpl(this);
}

class QueryParametersImpl implements QueryParameters {
  final Map<dynamic, QueryParameter> parameters = {};

  final BaseQueryImpl query;

  QueryParametersImpl(this.query, QueryParametersImpl initialParameters) {
    if (initialParameters != null) {
      initialParameters.parameters.forEach((k, p) {
        set(k, p.value, type: p.type);
      });
    }
  }

  BaseQueryManagerImpl get queryManager => query.queryManager;

  @override
  void operator []=(parameter, value) {
    set(parameter, value);
  }

  @override
  void setBool(parameter, bool value) {
    set(parameter, value, type: QueryValueType.BOOL);
  }

  @override
  void setDate(parameter, DateTime value) {
    set(parameter, value, type: QueryValueType.DATE);
  }

  @override
  void setDateTime(parameter, DateTime value) {
    set(parameter, value, type: QueryValueType.DATETIME);
  }

  @override
  void setTime(parameter, DateTime value) {
    set(parameter, value, type: QueryValueType.TIME);
  }

  @override
  void set(parameter, value, {QueryValueType type}) {
    parameters[parameter] = createQueryParameter(value, type: type);
  }

  QueryParameter createQueryParameter(value, {QueryValueType type}) =>
      new QueryParameter(value, type: type);
}

class QueryResultColumnTypesImpl implements QueryResultColumnTypes {
  final Map<dynamic, QueryValueType> columnTypes = {};

  final BaseQueryImpl query;

  QueryResultColumnTypesImpl(this.query);

  BaseQueryManagerImpl get queryManager => query.queryManager;

  @override
  void operator []=(column, QueryValueType type) {
    columnTypes[column] = type;
  }

  @override
  void setBool(column) {
    this[column] = QueryValueType.BOOL;
  }

  @override
  void setDateTime(column) {
    this[column] = QueryValueType.DATETIME;
  }

  @override
  void setDate(column) {
    this[column] = QueryValueType.DATE;
  }

  @override
  void setTime(column) {
    this[column] = QueryValueType.TIME;
  }
}

class QueryResultImpl implements QueryResult {
  List<QueryResultRow> _rows;

  @override
  final int affectedRows;

  @override
  final int lastInsertId;

  final List<sql.SqlNode> columns;

  final Map<String, int> columnIdentifierIndexes;

  final List<QueryValueType> indexedColumnTypes;

  final Map<String, QueryValueType> namedColumnTypes;

  final BaseQueryImpl query;

  QueryResultImpl.select(this.query, this.columns, this.columnIdentifierIndexes,
      this.indexedColumnTypes, this.namedColumnTypes, List<List> data)
      : this.affectedRows = data.length,
        this.lastInsertId = null {
    this._rows = new UnmodifiableListView(
        data.map((rowData) => createQueryResultRow(rowData)));
  }

  QueryResultImpl.update(this.query, this.affectedRows, this.lastInsertId)
      : this._rows = null,
        this.columns = null,
        this.indexedColumnTypes = null,
        this.namedColumnTypes = null,
        this.columnIdentifierIndexes = null;

  @override
  List<QueryResultRow> get rows => new UnmodifiableListView(_rows);

  BaseQueryManagerImpl get queryManager => query.queryManager;

  @override
  bool get isResultSet => columns != null;

  bool contains(column) {
    if (column is int) {
      return column >= 0 && column < columns.length;
    } else {
      return columnIdentifierIndexes
          .containsKey(queryManager.getColumnIdentifier(column));
    }
  }

  QueryValueType getColumnType(column) {
    if (column is int) {
      if (column >= 0 && column < indexedColumnTypes.length) {
        return indexedColumnTypes[column];
      } else {
        throw new ArgumentError("Column not exist $column");
      }
    } else {
      return namedColumnTypes[queryManager.getColumnIdentifier(column)];
    }
  }

  int getColumnIndex(column) {
    if (column is int) {
      if (column >= 0 && column < indexedColumnTypes.length) {
        return column;
      } else {
        throw new ArgumentError("Column not exist $column");
      }
    } else {
      var columnIdentifier = queryManager.getColumnIdentifier(column);
      var i = columnIdentifierIndexes[columnIdentifier];
      if (i != null) {
        return i;
      } else {
        throw new ArgumentError("Column not exist $columnIdentifier");
      }
    }
  }

  QueryResultRow createQueryResultRow(List rowData) =>
      new QueryResultRowImpl(this, rowData);
}

class QueryResultRowImpl implements QueryResultRow {
  final List values;

  final QueryResultImpl queryResult;

  QueryResultRowImpl(this.queryResult, this.values);

  BaseQueryManagerImpl get queryManager => queryResult.queryManager;

  @override
  operator [](column) => get(column);

  @override
  String getString(column) => get(column, type: QueryValueType.STRING);

  @override
  num getNum(column) => get(column, type: QueryValueType.NUM);

  @override
  bool getBool(column) => get(column, type: QueryValueType.BOOL);

  @override
  DateTime getDate(column) => get(column, type: QueryValueType.DATE);

  @override
  DateTime getDateTime(column) => get(column, type: QueryValueType.DATETIME);

  @override
  DateTime getTime(column) => get(column, type: QueryValueType.TIME);

  @override
  bool contains(column) => queryResult.contains(column);

  @override
  get(column, {QueryValueType type}) {
    var i = queryResult.getColumnIndex(column);
    return queryManager.convertValue(values[i],
        type: type ?? queryResult.getColumnType(i));
  }

  @override
  int get columnsCount => values.length;
}
