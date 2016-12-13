import "dart:async";

import "package:sqltree_query/sqltree_query.dart";
import "package:sqltree/sqltree.dart";

import "localizable.dart";

class LocalizableQueryManagerImpl extends BaseQueryManagerImpl<LocalizableQuery>
    implements LocalizableQueryManager {
  LocalizableQueryManagerImpl(QueryConnector queryConnector)
      : super(queryConnector);

  @override
  LocalizableQuery<SqlSelectStatement> prepareSelect(
          {QueryParameters initialParameters}) =>
      super.prepareSelect(initialParameters: initialParameters);

  @override
  LocalizableQuery<SqlInsertStatement> prepareInsert(
          {QueryParameters initialParameters}) =>
      super.prepareInsert(initialParameters: initialParameters);

  @override
  LocalizableQuery<SqlUpdateStatement> prepareUpdate(
          {QueryParameters initialParameters}) =>
      super.prepareUpdate(initialParameters: initialParameters);

  @override
  LocalizableQuery<SqlDeleteStatement> prepareDelete(
          {QueryParameters initialParameters}) =>
      super.prepareDelete(initialParameters: initialParameters);

  @override
  LocalizableQuery<SqlStatement /*S*/ > prepare/*<S extends SqlStatement>*/(
          SqlStatement /*S*/ statement,
          {QueryParameters initialParameters}) =>
      super.prepare(statement, initialParameters: initialParameters);

  @override
  LocalizableQuery createQuery(
          SqlStatement statement, QueryParameters initialParameters) =>
      new LocalizableQueryImpl(this, statement, initialParameters);

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
  LocalizableQueryImpl(LocalizableQueryManagerImpl queryManager,
      SqlStatement statement, LocalizableQueryParameters initialParameters)
      : super(queryManager, statement, initialParameters);

  @override
  LocalizableQueryParameters createQueryParameters(
          LocalizableQueryParameters initialParameters) =>
      new LocalizableQueryParametersImpl(this, initialParameters);

  @override
  LocalizableQueryResultColumnTypes createQueryResultColumnTypes() =>
      new LocalizableQueryResultColumnTypesImpl(this);

  @override
  LocalizableQuery clone({bool freeze}) => super.clone(freeze: freeze);

  @override
  Future<LocalizableQueryResult> execute() => super.execute();
}

class LocalizableQueryParametersImpl extends QueryParametersImpl
    implements LocalizableQueryParameters {
  LocalizableQueryParametersImpl(LocalizableQueryImpl query,
      LocalizableQueryParametersImpl initialParameters)
      : super(query, initialParameters);
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
