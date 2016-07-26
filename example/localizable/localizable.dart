import "dart:async";

import "package:sqltree_query/sqltree_query.dart";
import "package:sqltree/sqltree.dart";

abstract class LocalizableQueryManager implements QueryManager {
  LocalizableQuery create(SqlStatement statement);

  Future<LocalizableQueryResult> execute(Query query);
}

abstract class LocalizableQuery implements Query {
  LocalizableQueryParameters get parameters;

  LocalizableQueryResultColumnTypes get resultColumnTypes;
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
