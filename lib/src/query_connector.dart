// Copyright (c) 2016, Roberto Tassi. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import "dart:async";

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

abstract class QueryConnector {
  Future<List<Map<String, dynamic>>> showTables(String schema);

  Future<List<Map<String, dynamic>>> showColumns(String schema, String table);

  Future<List<List>> query(String statement,
      {List<QueryParameter> parameters: const <QueryParameter>[],
      List<QueryValueType> resultColumnTypes: const <QueryValueType>[]});
}
