// Copyright (c) 2016, Roberto Tassi. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import "dart:async";

import "package:collection/collection.dart";

import "package:sqltree/sqltree.dart";
import "package:sqltree_schema/sqltree_schema.dart" as schema;
import "sqltree_query.dart";

abstract class BaseQueryManagerImpl<Q extends Query, R extends QueryResult> {
  Q create(SqlStatement statement) => createQuery(statement);

  Future<R> execute(Q query) {
    // TODO: implement execute
    throw new UnsupportedError("TODO");
  }

  Q createQuery(SqlStatement statement);

  R createSelectQueryResult(
      Q query,
      List<SqlNode> columns,
      Map<String, int> columnIdentifierIndexes,
      List<QueryValueType> indexedColumnTypes,
      Map<String, QueryValueType> namedColumnTypes,
      List<List> rows);

  R createUpdateQueryResult(Q query, int affectedRows, int lastInsertId);

  prepareParameterValue(value, {QueryValueType type}) =>
      convertValue(value, type: type);

  prepareColumnValue(value, {QueryValueType type}) =>
      convertValue(value, type: type);

  convertValue(value, {QueryValueType type}) {
    if (type == null || value == null) {
      return value;
    } else if (type == QueryValueType.STRING) {
      if (value is String) {
        return value;
      } else if (value is DateTime) {
        checkUtcDateTime(value);

        return value.toIso8601String();
      } else {
        return value.toString();
      }
    } else if (type == QueryValueType.BOOL) {
      if (value is bool) {
        return value;
      } else if (value is num) {
        if (value == 1) {
          return true;
        } else if (value == 0) {
          return false;
        }
      }

      throw new ArgumentError("Invalid bool value $value");
    } else if (type == QueryValueType.DATETIME) {
      if (value is DateTime) {
        checkUtcDateTime(value);

        return value;
      } else if (value is String) {
        var dateTime = DateTime.parse(value);

        checkUtcDateTime(dateTime);

        return dateTime;
      }

      throw new ArgumentError("Invalid datetime value $value");
    } else if (type == QueryValueType.DATE) {
      if (value is DateTime) {
        checkUtcDateTime(value);

        return getDateTimeWithoutTime(value);
      } else if (value is String) {
        var dateTime = DateTime.parse(value);

        checkUtcDateTime(dateTime);

        return getDateTimeWithoutTime(dateTime);
      }

      throw new ArgumentError("Invalid date value $value");
    } else if (type == QueryValueType.TIME) {
      if (value is DateTime) {
        checkUtcDateTime(value);

        return getDateTimeWithoutDate(value);
      } else if (value is String) {
        var dateTime = DateTime.parse(value);

        checkUtcDateTime(dateTime);

        return getDateTimeWithoutDate(dateTime);
      }

      throw new ArgumentError("Invalid time value $value");
    } else if (type == QueryValueType.NUM) {
      if (value is num) {
        return value;
      } else if (value is String) {
        return num.parse(value);
      }

      throw new ArgumentError("Invalid num value $value");
    } else {
      throw new UnsupportedError("Invalid value type $type");
    }
  }

  QueryValueType getValueType(value) {
    if (value is String) {
      return QueryValueType.STRING;
    } else if (value is bool) {
      return QueryValueType.BOOL;
    } else if (value is DateTime) {
      return QueryValueType.DATETIME;
    } else if (value is num) {
      return QueryValueType.NUM;
    }

    return null;
  }

  String getColumnIdentifier(column, {bool throwsError: true}) {
    if (column is String) {
      return column;
    } else if (column is int) {
      return column.toString();
    } else if (column is schema.SqlColumn) {
      return column.qualifiedName;
    } else if (column is SqlNode) {
      if (column.type == types.AS) {
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

  void checkUtcDateTime(DateTime dateTime) {
    if (!dateTime.isUtc) {
      throw new ArgumentError("Value is not in UTC $dateTime");
    }
  }

  DateTime getDateTimeWithoutTime(DateTime dateTime) =>
      dateTime.subtract(new Duration(
          hours: dateTime.hour,
          minutes: dateTime.minute,
          seconds: dateTime.second,
          milliseconds: dateTime.millisecond,
          microseconds: dateTime.microsecond));

  DateTime getDateTimeWithoutDate(DateTime dateTime) => new DateTime.utc(
      0,
      1,
      1,
      dateTime.hour,
      dateTime.minute,
      dateTime.second,
      dateTime.millisecond,
      dateTime.microsecond);
}

class QueryManagerImpl extends BaseQueryManagerImpl<Query, QueryResult>
    implements QueryManager {
  @override
  Future<QueryResult> execute(Query query) {
    // TODO: implement execute
    throw new UnsupportedError("TODO");
  }

  Query createQuery(SqlStatement statement) => new QueryImpl(this, statement);

  QueryResult createSelectQueryResult(
          Query query,
          List<SqlNode> columns,
          Map<String, int> columnIdentifierIndexes,
          List<QueryValueType> indexedColumnTypes,
          Map<String, QueryValueType> namedColumnTypes,
          List<List> rows) =>
      new QueryResultImpl.select(query as QueryImpl, columns,
          columnIdentifierIndexes, indexedColumnTypes, namedColumnTypes, rows);

  QueryResult createUpdateQueryResult(
          Query query, int affectedRows, int lastInsertId) =>
      new QueryResultImpl.update(
          query as QueryImpl, affectedRows, lastInsertId);
}

abstract class BaseQueryImpl<P extends QueryParameters,
    C extends QueryResultColumnTypes> {
  final BaseQueryManagerImpl queryManager;

  final SqlStatement statement;

  P _parameters;

  C _resultColumnTypes;

  BaseQueryImpl(this.queryManager, this.statement) {
    _parameters = createQueryParameters();
    _resultColumnTypes = createQueryResultColumnTypes();
  }

  P createQueryParameters();

  C createQueryResultColumnTypes();

  P get parameters => _parameters;

  C get resultColumnTypes => _resultColumnTypes;
}

class QueryImpl extends BaseQueryImpl<QueryParameters, QueryResultColumnTypes>
    implements Query {
  QueryImpl(QueryManagerImpl queryManager, SqlStatement statement)
      : super(queryManager, statement);

  QueryParameters createQueryParameters() => new QueryParametersImpl(this);

  QueryResultColumnTypes createQueryResultColumnTypes() =>
      new QueryResultColumnTypesImpl(this);
}

class QueryParametersImpl implements QueryParameters {
  final Map<dynamic, QueryParameter> parameters = {};

  final BaseQueryImpl query;

  QueryParametersImpl(this.query);

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

  final List<SqlNode> columns;

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
}
