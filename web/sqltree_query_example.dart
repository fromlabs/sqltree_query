// Copyright (c) 2016, Roberto Tassi. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:sqltree/sqltree.dart' as sql;
import 'package:sqltree_query/sqltree_query.dart';

main() async {
  // 1. preparazione della query
  QueryManager queryManager;
  // statement
  Query query = queryManager.create(sql.select());
  // parametri
  query.parameters["status"] = true;
  query.parameters.set("status", true);
  query.parameters.setBool("status", true);
  query.parameters.set("status", true, type: QueryValueType.BOOL);
  // tipi colonne risultati
  query.resultColumnTypes["status"] = QueryValueType.BOOL;
  query.resultColumnTypes.setBool("status");
  query.resultColumnTypes["status"] = QueryValueType.BOOL;

  // 2. esecuzione della query e recupero ResultSet
  var result = await queryManager.execute(query);

  // 3. lettura resultset
  if (result.isResultSet) {
    for (var record in result.rows) {
      // recupero colonne
      record["status"];
      record.get("status");
      record.get("status", type: QueryValueType.BOOL);
      record.getBool("status");
    }
  } else {
    result.lastInsertId;
    result.affectedRows;
  }
}
