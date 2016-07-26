import "dart:async";

import 'package:sqltree_schema/sqltree_schema_generator.dart';

import "query_connector.dart";

typedef bool TableFilter(String schema, String table);

typedef bool ColumnFilter(
    String schema, String table, String column, bool isPrimaryKey);

class QueryConnectorSchemaGenerator extends FileSchemaGenerator {
  final QueryConnector _connector;
  final String _phisicalSchema;
  final TableFilter _tableFilter;
  final ColumnFilter _columnFilter;

  QueryConnectorSchemaGenerator(String schemaName, String libraryPath,
      this._phisicalSchema, this._connector,
      {TableFilter tableFilter,
      ColumnFilter columnFilter,
      String headerText: ""})
      : this._tableFilter = tableFilter,
        this._columnFilter = columnFilter,
        super(schemaName, libraryPath, headerText: headerText);

  @override
  Future<String> generate() async {
    await loadSchema(_phisicalSchema);

    return super.generate();
  }

  Future loadSchema(String schema) async {
    var tableNames = await getTables(schema);

    for (var table in tableNames) {
      if (_tableFilter == null || _tableFilter(schema, table)) {
        var tableDescriptor = await createTableDescriptor(schema, table);

        tables.add(tableDescriptor);
      }
    }
  }

  Future<List<String>> getTables(String schema) async {
    var data = await _connector.showTables(schema);

    var tables = <String>[];
    for (var record in data) {
      tables.add(record["table"]);
    }
    return tables;
  }

  Future<TableDescriptor> createTableDescriptor(
      String schema, String table) async {
    var tableDescriptor = newTableDescriptor(table);

    var data = await _connector.showColumns(schema, table);

    for (var record in data) {
      var column = record["column"];
      var isPrimaryKey = record["isPrimaryKey"];

      if (_columnFilter == null ||
          _columnFilter(
              record["schema"], record["table"], column, isPrimaryKey)) {
        if (isPrimaryKey) {
          tableDescriptor.primaryKeys.add(column);
        }

        tableDescriptor.columns.add(new ColumnDescriptor(column));
      }
    }

    return tableDescriptor;
  }

  TableDescriptor newTableDescriptor(String table) =>
      new TableDescriptor(table);
}
