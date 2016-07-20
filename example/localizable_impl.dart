import "dart:async";

import "localizable.dart";
import "package:sqltree_query/sqltree_query.dart";
import "package:sqltree/sqltree.dart";

class LocalizableQueryManagerImpl
    extends BaseQueryManagerImpl<LocalizableQuery, LocalizableQueryResult>
    implements LocalizableQueryManager {
  @override
  Future<LocalizableQueryResult> execute(Query query) {
    // TODO: implement execute
    throw new UnsupportedError("TODO");
  }

  @override
  LocalizableQuery createQuery(SqlStatement statement) =>
      new LocalizableQueryImpl(this, statement);

  @override
  LocalizableQueryResult createSelectQueryResult(
          LocalizableQuery query,
          List<SqlNode> columns,
          Map<String, int> columnIdentifierIndexes,
          List<QueryValueType> indexedColumnTypes,
          Map<String, QueryValueType> namedColumnTypes,
          List<List> rows) =>
      null;

  @override
  LocalizableQueryResult createUpdateQueryResult(
          LocalizableQuery query, int affectedRows, int lastInsertId) =>
      null;
}

class LocalizableQueryImpl extends BaseQueryImpl<LocalizableQueryParameters,
    LocalizableQueryResultColumnTypes> implements LocalizableQuery {
  LocalizableQueryImpl(
      LocalizableQueryManagerImpl queryManager, SqlStatement statement)
      : super(queryManager, statement);

  @override
  LocalizableQueryParameters createQueryParameters() =>
      new LocalizableQueryParametersImpl(this);

  @override
  LocalizableQueryResultColumnTypes createQueryResultColumnTypes() =>
      new LocalizableQueryResultColumnTypesImpl(this);
}

class LocalizableQueryParametersImpl extends QueryParametersImpl
    implements LocalizableQueryParameters {
  LocalizableQueryParametersImpl(LocalizableQueryImpl query) : super(query);
}

class LocalizableQueryResultColumnTypesImpl extends QueryResultColumnTypesImpl
    implements LocalizableQueryResultColumnTypes {
  LocalizableQueryResultColumnTypesImpl(LocalizableQueryImpl query)
      : super(query);
}

class LocalizableQueryResultImpl extends QueryResultImpl
    implements LocalizableQueryResult {
  LocalizableQueryResultImpl.select(
      QueryImpl query,
      List<SqlNode> columns,
      Map<String, int> columnIdentifierIndexes,
      List<QueryValueType> indexedColumnTypes,
      Map<String, QueryValueType> namedColumnTypes,
      List<List> data)
      : super.select(query, columns, columnIdentifierIndexes,
            indexedColumnTypes, namedColumnTypes, data);

  LocalizableQueryResultImpl.update(
      QueryImpl query, int affectedRows, int lastInsertId)
      : super.update(query, affectedRows, lastInsertId);

  List<LocalizableQueryResultRow> get rows => null;
}

class LocalizableQueryResultRowImpl extends QueryResultRowImpl
    implements LocalizableQueryResultRow {
  LocalizableQueryResultRowImpl(QueryResultImpl queryResult, List values)
      : super(queryResult, values);
}

class LocalizableQueryValueType extends QueryValueType {
  LocalizableQueryValueType(String type) : super(type);
}
