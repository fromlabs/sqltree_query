// Copyright (c) 2016, Roberto Tassi. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import "dart:async";

import "package:collection/collection.dart";

import "package:sqltree/sqltree.dart";
import "package:sqltree_schema/sqltree_schema.dart" as schema;
import "sqltree_query.dart";

class QueryManagerImpl implements QueryManager {
  @override
  Query create(SqlStatement statement) => createQuery(statement);

  Query createQuery(SqlStatement statement) => new QueryImpl(statement, this);

  @override
  Future<QueryResult> execute(Query query) {
    // TODO: implement execute
    throw new UnsupportedError("TODO");
  }

  convertValue(value, {QueryValueType type}) {
    if (type == null) {
      return value;
    } else if (type == QueryValueType.STRING) {
      if (value is String || value == null) {
        return value;
      } else if (value is DateTime) {
        return value.toIso8601String();
      } else {
        return value.toString();
      }
    } else if (type == QueryValueType.BOOL) {
      if (value is bool || value == null) {
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
      if (value is DateTime || value == null) {
        return value?.toUtc();
      } else if (value is String) {
        return DateTime.parse(value).toUtc();
      }

      throw new ArgumentError("Invalid datetime value $value");
    } else if (type == QueryValueType.DATE) {
      if (value is DateTime || value == null) {
        // TODO pulire il time
        return value;
      } else if (value is String) {
        // TODO pulire il time
        return DateTime.parse(value);
      }

      throw new ArgumentError("Invalid date value $value");
    } else if (type == QueryValueType.TIME) {
      if (value is DateTime || value == null) {
        // TODO pulire la data
        return value;
      } else if (value is String) {
        // TODO pulire la data
        return DateTime.parse(value);
      }

      throw new ArgumentError("Invalid time value $value");
    } else if (type == QueryValueType.INT) {
      if (value is int || value == null) {
        return value;
      } else if (value is String) {
        return int.parse(value);
      }

      throw new ArgumentError("Invalid int value $value");
    } else if (type == QueryValueType.DOUBLE) {
      if (value is double || value == null) {
        return value;
      } else if (value is String) {
        return double.parse(value);
      }

      throw new ArgumentError("Invalid double value $value");
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
    } else if (value is double) {
      return QueryValueType.DOUBLE;
    } else if (value is int) {
      return QueryValueType.INT;
    }

    return null;
  }

  String getColumnIdentifier(column) {
    if (column is String) {
      return column;
    } else if (column is schema.SqlColumn) {
      return column.qualifiedName;
    } else if (column is SqlNode) {
      if (column.type == types.AS) {
        return column.children[1].rawExpression;
      } else if (column.isRawNode) {
        return column.rawExpression;
      }
    }

    throw new ArgumentError("Unknown column identifier for: $column");
  }

  QueryResultImpl createQueryResult(Query query, List<String> columnIdentifiers,
          List<SqlNode> columns, List<List> rows) =>
      new QueryResultImpl(query, columnIdentifiers, columns, rows, this);
}

class QueryImpl implements Query {
  final QueryManagerImpl _queryManager;

  final SqlStatement statement;
  QueryParameters parameters;
  QueryResultColumnTypes resultColumnTypes;

  QueryImpl(this.statement, this._queryManager) {
    parameters = createQueryParameters();
    resultColumnTypes = createQueryResultColumnTypes();
  }

  QueryManager get queryManager => _queryManager;

  QueryParameters createQueryParameters() =>
      new QueryParametersImpl(_queryManager);

  QueryResultColumnTypes createQueryResultColumnTypes() =>
      new QueryResultColumnTypesImpl(_queryManager);
}

class QueryResultImpl implements QueryResult {
  final Query query;

  final QueryManagerImpl queryManager;

  final List<QueryResultRow> _rows = [];

  QueryResultImpl(this.query, List<String> columnIdentifiers,
      List<SqlNode> columns, List<List> rows, this.queryManager) {
    for (List row in rows) {
      _rows.add(createQueryResultRow(columnIdentifiers, columns, row));
    }
  }

  @override
  bool get isResultSet {
    // TODO: implement isResultSet
    throw new UnsupportedError("TODO");
  }

  @override
  int get affectedRows {
    // TODO: implement affectedRows
    throw new UnsupportedError("TODO");
  }

  @override
  int get lastInsertId {
    // TODO: implement lastInsertId
    throw new UnsupportedError("TODO");
  }

  @override
  List<QueryResultRow> get rows => new UnmodifiableListView(_rows);

  QueryResultRow createQueryResultRow(
          List<String> columnIdentifiers, List<SqlNode> columns, List row) =>
      new QueryResultRowImpl(
          query, columnIdentifiers, columns, row, queryManager);
}

class QueryParametersImpl implements QueryParameters {
  final QueryManagerImpl _queryManager;

  final Map<String, QueryParameter> _parameters = {};

  QueryParametersImpl(this._queryManager);

  QueryManager get queryManager => _queryManager;

  Map<String, QueryParameter> get asMap => new UnmodifiableMapView(_parameters);

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
    parameter = _queryManager.getColumnIdentifier(parameter);

    _parameters[parameter] = createQueryParameter(value, type: type);
  }

  QueryParameter createQueryParameter(value, {QueryValueType type}) =>
      new QueryParameter(value, type: type);
}

class QueryResultColumnTypesImpl implements QueryResultColumnTypes {
  final QueryManagerImpl _queryManager;

  final Map<String, QueryValueType> _columnTypes = {};

  QueryResultColumnTypesImpl(this._queryManager);

  QueryManager get queryManager => _queryManager;

  Map<String, QueryValueType> get asMap =>
      new UnmodifiableMapView(_columnTypes);

  QueryValueType operator [](column) => getType(column);

  @override
  void operator []=(column, QueryValueType type) {
    setType(column, type);
  }

  @override
  void setBoolType(column) {
    setType(column, QueryValueType.BOOL);
  }

  @override
  void setDateTimeType(column) {
    setType(column, QueryValueType.DATETIME);
  }

  @override
  void setDateType(column) {
    setType(column, QueryValueType.DATE);
  }

  @override
  void setTimeType(column) {
    setType(column, QueryValueType.TIME);
  }

  @override
  void setType(column, QueryValueType type) {
    column = _queryManager.getColumnIdentifier(column);

    _columnTypes[column] = type;
  }

  QueryValueType getType(column) {
    column = _queryManager.getColumnIdentifier(column);

    return _columnTypes[column];
  }
}

class QueryResultRowImpl implements QueryResultRow {
  final Query query;
  final QueryManagerImpl queryManager;

  final List<String> columnIdentifiers;
  final List<SqlNode> columns;
  final List values;

  QueryResultRowImpl(this.query, this.columnIdentifiers, this.columns,
      this.values, this.queryManager);

  @override
  Map<String, dynamic> get asMap {
    var valueMap = <String, dynamic>{};

    for (var column in columnIdentifiers) {
      valueMap[column] = this[column];
    }

    return valueMap;
  }

  @override
  operator [](column) => get(column);

  @override
  String getString(column) => get(column, type: QueryValueType.STRING);

  @override
  int getInt(column) => get(column, type: QueryValueType.INT);

  @override
  double getDouble(column) => get(column, type: QueryValueType.DOUBLE);

  @override
  bool getBool(column) => get(column, type: QueryValueType.BOOL);

  @override
  DateTime getDate(column) => get(column, type: QueryValueType.DATE);

  @override
  DateTime getDateTime(column) => get(column, type: QueryValueType.DATETIME);

  @override
  DateTime getTime(column) => get(column, type: QueryValueType.TIME);

  @override
  bool contains(column) =>
      columnIdentifiers.contains(queryManager.getColumnIdentifier(column));

  @override
  get(column, {QueryValueType type}) {
    var columnIdentifier = queryManager.getColumnIdentifier(column);

    var i = columnIdentifiers.indexOf(columnIdentifier);

    if (i != -1) {
      return queryManager.convertValue(values[i], type: type);
    } else {
      throw new ArgumentError("Column not exist: $columnIdentifier");
    }
  }
}
