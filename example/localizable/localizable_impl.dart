import "dart:async";

import "package:sqltree_query/sqltree_query.dart";
import "package:sqltree/sqltree.dart";

import "localizable.dart";

class LocalizableQueryManagerImpl
    extends BaseQueryManagerImpl<LocalizableQuery, LocalizableQueryResult>
    implements LocalizableQueryManager {
  LocalizableQueryManagerImpl(QueryConnector queryConnector)
      : super(queryConnector);

  @override
  LocalizableQuery<SqlSelectStatement> prepareSelect() => super.prepareSelect();

  @override
  LocalizableQuery<SqlInsertStatement> prepareInsert() => super.prepareInsert();

  @override
  LocalizableQuery<SqlUpdateStatement> prepareUpdate() => super.prepareUpdate();

  @override
  LocalizableQuery<SqlDeleteStatement> prepareDelete() => super.prepareDelete();

  @override
  Future<LocalizableQueryResult> execute(Query query) => super.execute(query);

  @override
  LocalizableQuery<SqlStatement /*S*/ > prepare/*<S extends SqlStatement>*/(
          SqlStatement /*S*/ statement,
          {QueryParameters parameters}) =>
      super.prepare(statement, parameters: parameters);

  @override
  LocalizableQuery createQuery(
          SqlStatement statement, QueryParameters parameters) =>
      new LocalizableQueryImpl(this, statement, parameters);

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
      SqlStatement statement, LocalizableQueryParameters parameters)
      : super(queryManager, statement, parameters);

  @override
  LocalizableQueryParameters createQueryParameters(
          LocalizableQueryParameters parameters) =>
      new LocalizableQueryParametersImpl(this, parameters);

  @override
  LocalizableQueryResultColumnTypes createQueryResultColumnTypes() =>
      new LocalizableQueryResultColumnTypesImpl(this);

  @override
  LocalizableQuery clone({bool freeze}) => super.clone(freeze: freeze);
}

class LocalizableQueryParametersImpl extends QueryParametersImpl
    implements LocalizableQueryParameters {
  LocalizableQueryParametersImpl(
      LocalizableQueryImpl query, LocalizableQueryParametersImpl parameters)
      : super(query, parameters);
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
