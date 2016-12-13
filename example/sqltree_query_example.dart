// Copyright (c) 2016, Roberto Tassi. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:sqltree/sqltree.dart' as sql;
import 'package:sqltree_query/sqltree_query.dart';

main() async {
  var statement = sql.select(2);
  print(statement);
  print(statement.isFreezed);

  var queryManager = new QueryManagerImpl(null);
  var query = queryManager.prepareSelect();

  query.statement.select(1);

  var query2 = query.clone();
  query2.statement
    ..clearSelect()
    ..select(2);

  print(query.statement);
  print(query2.statement);
}

test1() async {
  // 1. preparazione della query
  QueryManager queryManager;
  // statement
  Query<sql.SqlSelectStatement> query = queryManager.prepare(sql.select());

  query.statement.select(1);

  var query2 = query.clone();
  query2.statement
    ..clearSelect()
    ..select(2);

  print(query);
  print(query2);
}

test2() async {
  // 1. preparazione della query
  QueryManager queryManager;
  // statement
  var query = queryManager.prepareSelect();

  query.statement
    ..select(1)
    ..from(2);
}

test3() async {
  // 1. preparazione della query
  QueryManager queryManager;
  // statement
  var query = queryManager.prepareSelect();
  query.statement
    ..select(1)
    ..from(2);
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
  var result = await query.execute();

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

test4() async {
  // 1. preparazione della query
  QueryManager queryManager;
  // statement
  Query query = queryManager.prepare(sql.select());
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
  var result = await query.execute();

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
