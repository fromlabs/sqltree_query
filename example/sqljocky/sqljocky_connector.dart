// Copyright (c) 2016, Roberto Tassi. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import "dart:async";

import "package:sqljocky/sqljocky.dart";
import "package:sqltree_query/sqltree_query.dart";

class SqlJockyWrapperQueryConnectorImpl extends SqlJockyQueryConnectorImpl {
  final QueriableConnection _connection;

  SqlJockyWrapperQueryConnectorImpl(this._connection);

  @override
  Future<QueriableConnection> provideConnection() async => _connection;
}

abstract class SqlJockyQueryConnectorImpl extends BaseQueryConnectorImpl
    implements QueryConnector {
  Future<QueriableConnection> provideConnection();

  @override
  Future<List<Map<String, dynamic>>> showTables(String schema) async {
    var connection = await provideConnection();

    var response = await connection.query("show tables in $schema");

    return await response
        .map((row) => <String, dynamic>{"schema": schema, "table": row[0]})
        .toList();
  }

  @override
  Future<List<Map<String, dynamic>>> showColumns(
      String schema, String table) async {
    var connection = await provideConnection();

    var response =
        await connection.query("show columns from $table in $schema");

    return await response.map((row) {
      return <String, dynamic>{
        "schema": schema,
        "table": table,
        "column": row[0],
        "isPrimaryKey": row[3] == "PRI"
      };
    }).toList();
  }

  @override
  Future<List<List>> queryInternal(String statement, [List parameters]) async {
    var connection = await provideConnection();

    var response = await connection.prepare(statement);

    var results = await response.execute(parameters);

    var rows = await results.toList();

    return rows
        .map((row) => row.toList(growable: false))
        .toList(growable: false);
  }

  @override
  Future<List<int>> updateInternal(String statement, [List parameters]) async {
    var connection = await provideConnection();

    var response = await connection.prepare(statement);

    var results = await response.execute(parameters);

    var rows =
        results.affectedRows != null ? new List(results.affectedRows) : [];

    if (rows.isNotEmpty) {
      rows[rows.length - 1] = results.insertId;
    }

    return rows;
  }
}
