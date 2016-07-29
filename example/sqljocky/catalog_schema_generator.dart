// Copyright (c) 2016, Roberto Tassi. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import "dart:async";

import "package:sqljocky/sqljocky.dart";
import "package:sqltree_query/sqltree_query_schema_generator.dart";

import "sqljocky_connector.dart";

Future generateAppCatalogSchema(QueryConnector connector) async {
  var generator = new QueryConnectorSchemaGenerator("AppCatalog",
      "example/sqljocky/appcatalog.g.dart", "appcatalog", connector,
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
    }

    return true;
  });

  await generator.generateAndSave();
}

main() async {
  var pool = new ConnectionPool(
      host: '192.168.1.202', port: 3306, user: 'admin', password: 'admin');

  var connection;
  try {
    connection = await pool.getConnection();

    var connector = new SqlJockyWrapperQueryConnectorImpl(connection);

    await generateAppCatalogSchema(connector);
  } finally {
    if (connection != null) {
      await connection.release();
    }

    pool.closeConnectionsNow();
  }
}
