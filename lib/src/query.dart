// Copyright (c) 2016, Roberto Tassi. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import "dart:async";

import "package:sqltree/sqltree.dart" as sql;

import "query_connector.dart";

abstract class QueryManager {
  Query<sql.SqlSelectStatement> prepareSelect(
      {QueryParameters initialParameters});

  Query<sql.SqlInsertStatement> prepareInsert(
      {QueryParameters initialParameters});

  Query<sql.SqlUpdateStatement> prepareUpdate(
      {QueryParameters initialParameters});

  Query<sql.SqlDeleteStatement> prepareDelete(
      {QueryParameters initialParameters});

  Query<sql.SqlStatement /*S*/ > prepare/*<S extends sql.SqlStatement>*/(
      sql.SqlStatement /*S*/ statement,
      {QueryParameters initialParameters});
}

abstract class Query<S extends sql.SqlStatement> {
  S get statement;

  QueryParameters get parameters;

  QueryResultColumnTypes get resultColumnTypes;

  Query<S> clone({bool freeze});

  Future<QueryResult> execute();
}

abstract class QueryParameters {
  void operator []=(parameter, dynamic value);
  void set(parameter, dynamic value, {QueryValueType type});
  void setBool(parameter, bool value);
  void setDateTime(parameter, DateTime value);
  void setDate(parameter, DateTime value);
  void setTime(parameter, DateTime value);
}

abstract class QueryResultColumnTypes {
  void operator []=(column, QueryValueType type);
  void setBool(column);
  void setDateTime(column);
  void setDate(column);
  void setTime(column);
}

abstract class QueryResult {
  bool get isResultSet;

  int get lastInsertId;
  int get affectedRows;

  List<QueryResultRow> get rows;
}

abstract class QueryResultRow {
  int get columnsCount;
  bool contains(column);
  operator [](dynamic column);
  get(column, {QueryValueType type});
  String getString(column);
  num getNum(column);
  bool getBool(column);
  DateTime getDateTime(column);
  DateTime getDate(column);
  DateTime getTime(column);
}
