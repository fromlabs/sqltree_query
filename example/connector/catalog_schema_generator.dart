// Copyright (c) 2016, Roberto Tassi. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import "dart:async";

import "package:sqlconnection/sql_connection_remote.dart";

import "package:sqltree_query/sqltree_query_schema_generator.dart";

import "sql_connection_connector.dart";
import 'package:sqlconnection/sql_connection_api.dart';

Future generateAppCatalogSchema(QueryConnector connector) async {
  var generator = new QueryConnectorSchemaGenerator("Application",
      "example/connector/application.g.dart", "application", connector,
      headerText: """
import "package:sqltree_schema/sqltree_schema_builder.dart";
""", columnFilter: (schema, table, column, isPrimaryKey) {
    if (column.toUpperCase() == "INSERT_TIMESTAMP" ||
        column.toUpperCase() == "INSERT_USER" ||
        column.toUpperCase() == "UPDATE_TIMESTAMP" ||
        column.toUpperCase() == "UPDATE_USER") {
      return false;
    } else if (column.toUpperCase() == "ID_DOMAIN") {
      return false;
    }

    return true;
  });

  await generator.generateAndSave();
}

Future generateApplicationSchema(QueryConnector connector) async {
  var generator = new QueryConnectorSchemaGenerator("AppCatalog",
      "example/connector/appcatalog.g.dart", "appcatalog", connector,
      headerText: """
import "package:sqltree_schema/sqltree_schema_builder.dart";
""", tableFilter: (schema, table) {
    return table.toUpperCase() != "APP_ACTIVATION_HISTORY" &&
        table.toUpperCase() != "ACCESS_LOG";
  }, columnFilter: (schema, table, column, isPrimaryKey) {
    if (column.toUpperCase() == "INSERT_TIMESTAMP" ||
        column.toUpperCase() == "INSERT_USER" ||
        column.toUpperCase() == "UPDATE_TIMESTAMP" ||
        column.toUpperCase() == "UPDATE_USER") {
      return false;
    } else if (column.toUpperCase() == "ID_DOMAIN") {
      return false;
    }

    return true;
  });

  await generator.generateAndSave();
}

class SqlConnectionWrapperQueryConnectorImpl
    extends SqlConnectionQueryConnectorImpl {
  final SqlConnection _connection;

  SqlConnectionWrapperQueryConnectorImpl(this._connection);

  @override
  Future<SqlConnection> provideConnection() async => _connection;
}

main() async {
  var connectionFactory = new RemoteSqlConnectionFactory("localhost", 7777);
  var connection;

  try {
    connection = await connectionFactory.createConnection("::");

    var connector = new SqlConnectionWrapperQueryConnectorImpl(connection);

    await generateAppCatalogSchema(connector);

    await generateApplicationSchema(connector);
  } finally {
    if (connection != null) {
      connection.close();
    }

    connectionFactory.closeConnections();
  }
}
