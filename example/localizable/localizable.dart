import "dart:async";

import "package:sqltree_query/sqltree_query.dart";
import "package:sqltree/sqltree.dart";

abstract class LocalizableQueryManager implements QueryManager {
  LocalizableQuery<SqlSelectStatement> prepareSelect(
      {QueryParameters initialParameters});

  LocalizableQuery<SqlInsertStatement> prepareInsert(
      {QueryParameters initialParameters});

  LocalizableQuery<SqlUpdateStatement> prepareUpdate(
      {QueryParameters initialParameters});

  LocalizableQuery<SqlDeleteStatement> prepareDelete(
      {QueryParameters initialParameters});

  LocalizableQuery<SqlStatement /*S*/ > prepare/*<S extends SqlStatement>*/(
      SqlStatement /*S*/ statement,
      {QueryParameters initialParameters});
}

abstract class LocalizableQuery<S extends SqlStatement> implements Query<S> {
  LocalizableQueryParameters get parameters;

  LocalizableQueryResultColumnTypes get resultColumnTypes;

  LocalizableQuery<S> clone({bool freeze});

  Future<LocalizableQueryResult> execute();
}

abstract class LocalizableQueryParameters implements QueryParameters {}

abstract class LocalizableQueryResultColumnTypes
    implements QueryResultColumnTypes {}

abstract class LocalizableQueryResult implements QueryResult {
  List<LocalizableQueryResultRow> get rows;
}

abstract class LocalizableQueryResultRow implements QueryResultRow {}

class LocalizableQueryValueType extends QueryValueType {
  LocalizableQueryValueType(String type) : super(type);
}
