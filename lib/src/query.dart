// Copyright (c) 2016, Roberto Tassi. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import "dart:async";

import "package:sqltree/sqltree.dart" as sql;

abstract class QueryManager {
  Query create(sql.SqlStatement statement);

  Future<QueryResult> execute(Query query);
}

abstract class Query {
  sql.SqlStatement get statement;

  QueryParameters get parameters;

  QueryResultColumnTypes get resultColumnTypes;
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

class QueryValueType {
  static const QueryValueType STRING = const QueryValueType("STRING");
  static const QueryValueType NUM = const QueryValueType("NUM");
  static const QueryValueType BOOL = const QueryValueType("BOOL");
  static const QueryValueType DATETIME = const QueryValueType("DATETIME");
  static const QueryValueType DATE = const QueryValueType("DATE");
  static const QueryValueType TIME = const QueryValueType("TIME");

  final String type;

  const QueryValueType(this.type);

  @override
  String toString() => this.type;
}

class QueryParameter {
  final value;
  final QueryValueType type;

  QueryParameter(this.value, {this.type});
}

abstract class QueryResult {
  bool get isResultSet;

  int get lastInsertId;
  int get affectedRows;

  List<QueryResultRow> get rows;
}

abstract class QueryResultRow {
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
