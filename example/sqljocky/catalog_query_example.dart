// Copyright (c) 2016, Roberto Tassi. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import "package:sqljocky/sqljocky.dart";
import 'package:sqltree/sqltree.dart' as sql;
import 'package:sqltree_query/sqltree_query.dart';
import "package:sqltree_query/sqltree_query_schema_generator.dart";

import "sqljocky_connector.dart";

import "appcatalog.g.dart";

final AppCatalog_Schema DB = createAppCatalog_Schema("appcatalog");

query(QueryManager queryManager) async {
  var query = queryManager.prepare(sql.select(DB.PROFILE.columns)
    ..from(DB.PROFILE)
    ..limit(10));

  var result = await queryManager.execute(query);

  print("Rows: ${result.rows.length}");
  for (var row in result.rows) {
    print(
        "${row[DB.PROFILE.ID_PROFILE]} - ${row[DB.PROFILE.USERNAME]} [${row.getBool(DB.PROFILE.ACTIVE)}]");
  }
}

main() async {
  var pool = new ConnectionPool(
      host: '192.168.1.202', port: 3306, user: 'admin', password: 'admin');

  var connection;
  try {
    connection = await pool.getConnection();

    var connector = new SqlJockyWrapperQueryConnectorImpl(connection);

    var queryManager = new QueryManagerImpl(connector);

    await query(queryManager);
  } finally {
    if (connection != null) {
      await connection.release();
    }

    pool.closeConnectionsNow();
  }
}
