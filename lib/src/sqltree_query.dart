// Copyright (c) 2016, Roberto Tassi. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import "dart:async";

import "package:sqltree/sqltree.dart";

abstract class QueryManager {
  Query create(SqlStatement statement);

  Future<QueryResult> execute(Query query);
}

abstract class Query {
  SqlStatement get statement;

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
  void setType(column, QueryValueType type);
  void setBoolType(column);
  void setDateTimeType(column);
  void setDateType(column);
  void setTimeType(column);
}

class QueryValueType {
  static const QueryValueType STRING = const QueryValueType("STRING");
  static const QueryValueType INT = const QueryValueType("INT");
  static const QueryValueType DOUBLE = const QueryValueType("DOUBLE");
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
  int getInt(column);
  double getDouble(column);
  bool getBool(column);
  DateTime getDateTime(column);
  DateTime getDate(column);
  DateTime getTime(column);

  Map<String, dynamic> get asMap;
}