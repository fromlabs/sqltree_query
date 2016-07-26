// Copyright (c) 2016, Roberto Tassi. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import "dart:async";

import "package:sqlconnection/sql_connection_api.dart";
import "package:sqltree_query/sqltree_query.dart";

abstract class SqlConnectionQueryConnectorImpl extends BaseQueryConnectorImpl
    implements QueryConnector {
  Future<SqlConnection> provideConnection();

  @override
  Future<List<Map<String, dynamic>>> showTables(String schema) async {
    var connection = await provideConnection();

    var response = await connection.query("show tables in $schema");

    var data = <Map<String, dynamic>>[];
    for (var record in response.data) {
      data.add(<String, dynamic>{"schema": schema, "table": record[0]});
    }
    return data;
  }

  @override
  Future<List<Map<String, dynamic>>> showColumns(
      String schema, String table) async {
    var connection = await provideConnection();

    var response =
        await connection.query("show columns from $table in $schema");

    var data = <Map<String, dynamic>>[];
    for (var record in response.data) {
      data.add(<String, dynamic>{
        "schema": schema,
        "table": table,
        "column": record[0],
        "isPrimaryKey": record[3] == "PRI"
      });
    }
    return data;
  }

  @override
  Future<List<List>> queryInternal(String statement, [List parameters]) async {
    var connection = await provideConnection();

    var response = await connection.query(statement, parameters);

    return response.data;
  }
}
