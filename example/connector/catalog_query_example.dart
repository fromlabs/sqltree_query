// Copyright (c) 2016, Roberto Tassi. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import "dart:async";

import "package:logging/logging.dart";

import 'package:sqltree/sqltree.dart' as sql;
import 'package:sqltree_query/sqltree_query.dart';

import "package:sqlconnection/sql_connection_remote.dart";

import "package:sqltree_query/sqltree_query_schema_generator.dart";

import "sql_connection_connector.dart";
import 'package:sqlconnection/sql_connection_api.dart';

import "application.g.dart";

final Application_Schema APPLICATION_DB =
    createApplication_Schema("v_application");

query(SqlConnection connection) async {
  // 1. preparazione della query

  // query connector
  var connector = new SqlConnectionWrapperQueryConnectorImpl(connection);
  // query manager
  QueryManager queryManager = new QueryManagerImpl(connector);
  // query statement
  Query query = queryManager.create(sql.select(APPLICATION_DB.NODE.columns)
    ..from(APPLICATION_DB.NODE)
    ..limit(10));
  // query parameters
  // query result column types

  // 2. esecuzione della query e recupero ResultSet
  var result = await queryManager.execute(query);

  // 3. lettura resultset
  print("Rows: ${result.rows.length}");
  for (var row in result.rows) {
    print(
        "${row[APPLICATION_DB.NODE.ID_NODE]} - ${row[APPLICATION_DB.NODE.XL_NAME_EN]}");
  }
}

class SqlConnectionWrapperQueryConnectorImpl
    extends SqlConnectionQueryConnectorImpl {
  final SqlConnection _connection;

  SqlConnectionWrapperQueryConnectorImpl(this._connection);

  @override
  Future<SqlConnection> provideConnection() async => _connection;
}

main() async {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((logRecord) => print(logRecord));

  // TODO creare un file di configurazione per i livelli dei log
  hierarchicalLoggingEnabled = true;
  new Logger("dartregistry").level = Level.INFO;
  new Logger("dartdirect").level = Level.INFO;

  var connectionFactory = new RemoteSqlConnectionFactory("localhost", 7777);
  var connection;

  try {
    connection = await connectionFactory.createConnection(":primeapp:");

    await query(connection);
  } finally {
    if (connection != null) {
      connection.close();
    }

    connectionFactory.closeConnections();
  }
}
