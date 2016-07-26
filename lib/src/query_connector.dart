// Copyright (c) 2016, Roberto Tassi. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import "dart:async";

abstract class QueryConnector {
  Future<List<Map<String, dynamic>>> showTables(String schema);

  Future<List<Map<String, dynamic>>> showColumns(String schema, String table);

  Future<List<List>> query(String statement, [List parameters]);
}
