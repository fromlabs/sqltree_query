

import "package:sqltree_schema/sqltree_schema_builder.dart";


final Application_Schema _Application_DEFAULT = createApplication_Schema("");

BRAND_Table get BRAND => _Application_DEFAULT.BRAND;

C_CATALOG_ITEM_Table get C_CATALOG_ITEM => _Application_DEFAULT.C_CATALOG_ITEM;

CATALOG_Table get CATALOG => _Application_DEFAULT.CATALOG;

CLASSIFICATION_FEATURE_TYPE_Table get CLASSIFICATION_FEATURE_TYPE => _Application_DEFAULT.CLASSIFICATION_FEATURE_TYPE;

DETAIL_Table get DETAIL => _Application_DEFAULT.DETAIL;

DOMAIN_CURRENCY_Table get DOMAIN_CURRENCY => _Application_DEFAULT.DOMAIN_CURRENCY;

FEATURE_Table get FEATURE => _Application_DEFAULT.FEATURE;

FEATURE_TYPE_Table get FEATURE_TYPE => _Application_DEFAULT.FEATURE_TYPE;

FEATURE_TYPE_GROUP_Table get FEATURE_TYPE_GROUP => _Application_DEFAULT.FEATURE_TYPE_GROUP;

FILESYSTEM_Table get FILESYSTEM => _Application_DEFAULT.FILESYSTEM;

INFO_Table get INFO => _Application_DEFAULT.INFO;

ITEM_GROUP_Table get ITEM_GROUP => _Application_DEFAULT.ITEM_GROUP;

ITEM_GROUP_DETAIL_Table get ITEM_GROUP_DETAIL => _Application_DEFAULT.ITEM_GROUP_DETAIL;

ITEM_GROUP_TYPE_Table get ITEM_GROUP_TYPE => _Application_DEFAULT.ITEM_GROUP_TYPE;

ITEM_GROUP_URL_Table get ITEM_GROUP_URL => _Application_DEFAULT.ITEM_GROUP_URL;

ITEM_PACKAGE_Table get ITEM_PACKAGE => _Application_DEFAULT.ITEM_PACKAGE;

ITEM_PACKAGE_PRICE_Table get ITEM_PACKAGE_PRICE => _Application_DEFAULT.ITEM_PACKAGE_PRICE;

ITEM_SET_Table get ITEM_SET => _Application_DEFAULT.ITEM_SET;

ITEM_SET_DETAIL_Table get ITEM_SET_DETAIL => _Application_DEFAULT.ITEM_SET_DETAIL;

MEASURE_Table get MEASURE => _Application_DEFAULT.MEASURE;

NODE_Table get NODE => _Application_DEFAULT.NODE;

NODE_DETAIL_Table get NODE_DETAIL => _Application_DEFAULT.NODE_DETAIL;

NODE_FEATURE_Table get NODE_FEATURE => _Application_DEFAULT.NODE_FEATURE;

NODE_TYPE_Table get NODE_TYPE => _Application_DEFAULT.NODE_TYPE;

NODE_URL_Table get NODE_URL => _Application_DEFAULT.NODE_URL;

PACKAGE_Table get PACKAGE => _Application_DEFAULT.PACKAGE;

PRICE_LIST_Table get PRICE_LIST => _Application_DEFAULT.PRICE_LIST;

PROFILE_CATALOG_Table get PROFILE_CATALOG => _Application_DEFAULT.PROFILE_CATALOG;

URL_Table get URL => _Application_DEFAULT.URL;

V_CLASSIFICATION_Table get V_CLASSIFICATION => _Application_DEFAULT.V_CLASSIFICATION;

V_ITEM_Table get V_ITEM => _Application_DEFAULT.V_ITEM;

Application_Schema createApplication_Schema(String name) =>
    registerSharedSchema(new _Application_SchemaImpl(name));

abstract class Application_Schema implements SqlSchema {

  BRAND_Table get BRAND;

  C_CATALOG_ITEM_Table get C_CATALOG_ITEM;

  CATALOG_Table get CATALOG;

  CLASSIFICATION_FEATURE_TYPE_Table get CLASSIFICATION_FEATURE_TYPE;

  DETAIL_Table get DETAIL;

  DOMAIN_CURRENCY_Table get DOMAIN_CURRENCY;

  FEATURE_Table get FEATURE;

  FEATURE_TYPE_Table get FEATURE_TYPE;

  FEATURE_TYPE_GROUP_Table get FEATURE_TYPE_GROUP;

  FILESYSTEM_Table get FILESYSTEM;

  INFO_Table get INFO;

  ITEM_GROUP_Table get ITEM_GROUP;

  ITEM_GROUP_DETAIL_Table get ITEM_GROUP_DETAIL;

  ITEM_GROUP_TYPE_Table get ITEM_GROUP_TYPE;

  ITEM_GROUP_URL_Table get ITEM_GROUP_URL;

  ITEM_PACKAGE_Table get ITEM_PACKAGE;

  ITEM_PACKAGE_PRICE_Table get ITEM_PACKAGE_PRICE;

  ITEM_SET_Table get ITEM_SET;

  ITEM_SET_DETAIL_Table get ITEM_SET_DETAIL;

  MEASURE_Table get MEASURE;

  NODE_Table get NODE;

  NODE_DETAIL_Table get NODE_DETAIL;

  NODE_FEATURE_Table get NODE_FEATURE;

  NODE_TYPE_Table get NODE_TYPE;

  NODE_URL_Table get NODE_URL;

  PACKAGE_Table get PACKAGE;

  PRICE_LIST_Table get PRICE_LIST;

  PROFILE_CATALOG_Table get PROFILE_CATALOG;

  URL_Table get URL;

  V_CLASSIFICATION_Table get V_CLASSIFICATION;

  V_ITEM_Table get V_ITEM;

}

class _Application_SchemaImpl extends SqlSchemaImpl implements Application_Schema {
  _Application_SchemaImpl(String name) : super(name);

  _Application_SchemaImpl.cloneFrom(_Application_SchemaImpl target, bool freeze)
      : super.cloneFrom(target, freeze);

  @override
  BRAND_Table get BRAND => this["brand"];

  @override
  C_CATALOG_ITEM_Table get C_CATALOG_ITEM => this["c_catalog_item"];

  @override
  CATALOG_Table get CATALOG => this["catalog"];

  @override
  CLASSIFICATION_FEATURE_TYPE_Table get CLASSIFICATION_FEATURE_TYPE => this["classification_feature_type"];

  @override
  DETAIL_Table get DETAIL => this["detail"];

  @override
  DOMAIN_CURRENCY_Table get DOMAIN_CURRENCY => this["domain_currency"];

  @override
  FEATURE_Table get FEATURE => this["feature"];

  @override
  FEATURE_TYPE_Table get FEATURE_TYPE => this["feature_type"];

  @override
  FEATURE_TYPE_GROUP_Table get FEATURE_TYPE_GROUP => this["feature_type_group"];

  @override
  FILESYSTEM_Table get FILESYSTEM => this["filesystem"];

  @override
  INFO_Table get INFO => this["info"];

  @override
  ITEM_GROUP_Table get ITEM_GROUP => this["item_group"];

  @override
  ITEM_GROUP_DETAIL_Table get ITEM_GROUP_DETAIL => this["item_group_detail"];

  @override
  ITEM_GROUP_TYPE_Table get ITEM_GROUP_TYPE => this["item_group_type"];

  @override
  ITEM_GROUP_URL_Table get ITEM_GROUP_URL => this["item_group_url"];

  @override
  ITEM_PACKAGE_Table get ITEM_PACKAGE => this["item_package"];

  @override
  ITEM_PACKAGE_PRICE_Table get ITEM_PACKAGE_PRICE => this["item_package_price"];

  @override
  ITEM_SET_Table get ITEM_SET => this["item_set"];

  @override
  ITEM_SET_DETAIL_Table get ITEM_SET_DETAIL => this["item_set_detail"];

  @override
  MEASURE_Table get MEASURE => this["measure"];

  @override
  NODE_Table get NODE => this["node"];

  @override
  NODE_DETAIL_Table get NODE_DETAIL => this["node_detail"];

  @override
  NODE_FEATURE_Table get NODE_FEATURE => this["node_feature"];

  @override
  NODE_TYPE_Table get NODE_TYPE => this["node_type"];

  @override
  NODE_URL_Table get NODE_URL => this["node_url"];

  @override
  PACKAGE_Table get PACKAGE => this["package"];

  @override
  PRICE_LIST_Table get PRICE_LIST => this["price_list"];

  @override
  PROFILE_CATALOG_Table get PROFILE_CATALOG => this["profile_catalog"];

  @override
  URL_Table get URL => this["url"];

  @override
  V_CLASSIFICATION_Table get V_CLASSIFICATION => this["v_classification"];

  @override
  V_ITEM_Table get V_ITEM => this["v_item"];

  @override
  SqlTableImpl createTable(String name) {
    switch (name) {

      case "brand":
        return new _BRAND_TableImpl(this);

      case "c_catalog_item":
        return new _C_CATALOG_ITEM_TableImpl(this);

      case "catalog":
        return new _CATALOG_TableImpl(this);

      case "classification_feature_type":
        return new _CLASSIFICATION_FEATURE_TYPE_TableImpl(this);

      case "detail":
        return new _DETAIL_TableImpl(this);

      case "domain_currency":
        return new _DOMAIN_CURRENCY_TableImpl(this);

      case "feature":
        return new _FEATURE_TableImpl(this);

      case "feature_type":
        return new _FEATURE_TYPE_TableImpl(this);

      case "feature_type_group":
        return new _FEATURE_TYPE_GROUP_TableImpl(this);

      case "filesystem":
        return new _FILESYSTEM_TableImpl(this);

      case "info":
        return new _INFO_TableImpl(this);

      case "item_group":
        return new _ITEM_GROUP_TableImpl(this);

      case "item_group_detail":
        return new _ITEM_GROUP_DETAIL_TableImpl(this);

      case "item_group_type":
        return new _ITEM_GROUP_TYPE_TableImpl(this);

      case "item_group_url":
        return new _ITEM_GROUP_URL_TableImpl(this);

      case "item_package":
        return new _ITEM_PACKAGE_TableImpl(this);

      case "item_package_price":
        return new _ITEM_PACKAGE_PRICE_TableImpl(this);

      case "item_set":
        return new _ITEM_SET_TableImpl(this);

      case "item_set_detail":
        return new _ITEM_SET_DETAIL_TableImpl(this);

      case "measure":
        return new _MEASURE_TableImpl(this);

      case "node":
        return new _NODE_TableImpl(this);

      case "node_detail":
        return new _NODE_DETAIL_TableImpl(this);

      case "node_feature":
        return new _NODE_FEATURE_TableImpl(this);

      case "node_type":
        return new _NODE_TYPE_TableImpl(this);

      case "node_url":
        return new _NODE_URL_TableImpl(this);

      case "package":
        return new _PACKAGE_TableImpl(this);

      case "price_list":
        return new _PRICE_LIST_TableImpl(this);

      case "profile_catalog":
        return new _PROFILE_CATALOG_TableImpl(this);

      case "url":
        return new _URL_TableImpl(this);

      case "v_classification":
        return new _V_CLASSIFICATION_TableImpl(this);

      case "v_item":
        return new _V_ITEM_TableImpl(this);

      default:
        throw new UnsupportedError("Table not exist $name");
    }
  }

  @override
  _Application_SchemaImpl clone({bool freeze}) => super.clone(freeze: freeze);

  @override
  _Application_SchemaImpl createClone(bool freeze) =>
      new _Application_SchemaImpl.cloneFrom(this, freeze);
}

abstract class BRAND_Table implements SqlTable {

  SqlColumn get ID_BRAND;

  SqlColumn get NAME;

  SqlColumn get ID_URL;

  SqlColumn get SORTING;

  SqlColumn get ACTIVE;

  BRAND_Table alias(String alias);

  BRAND_Table clone({bool freeze});

}

class _BRAND_TableImpl extends SqlTableImpl implements BRAND_Table {
  static final Set<String> _pkNames = new Set.from(["id_brand"]);
  static final Set<String> _columnNames = new Set.from(["id_brand", "name", "id_url", "sorting", "active"]);

  _BRAND_TableImpl(SqlSchema schema) : super("brand", schema);

  _BRAND_TableImpl.aliased(String alias, _BRAND_TableImpl target)
      : super.aliased(alias, target);

  _BRAND_TableImpl.cloneFrom(_BRAND_TableImpl target, bool freeze)
      : super.cloneFrom(target, freeze);

  @override
  SqlColumn get ID_BRAND => this["id_brand"];

  @override
  SqlColumn get NAME => this["name"];

  @override
  SqlColumn get ID_URL => this["id_url"];

  @override
  SqlColumn get SORTING => this["sorting"];

  @override
  SqlColumn get ACTIVE => this["active"];

  @override
  Set<String> get primaryKeyNames => _pkNames;

  @override
  Set<String> get columnNames => _columnNames;

  @override
  BRAND_Table alias(String alias) => super.alias(alias);

  @override
  _BRAND_TableImpl clone({bool freeze}) => super.clone(freeze: freeze);

  @override
  _BRAND_TableImpl createClone(bool freeze) =>
      new _BRAND_TableImpl.cloneFrom(this, freeze);

  @override
  SqlTable createTableAlias(String alias) =>
      new _BRAND_TableImpl.aliased(alias, this);

}

abstract class C_CATALOG_ITEM_Table implements SqlTable {

  SqlColumn get ID_CATALOG;

  SqlColumn get ID_NODE;

  SqlColumn get ID_ITEM_PACKAGE;

  SqlColumn get ID_PRICE_LIST;

  SqlColumn get PRICE_START_DATE;

  SqlColumn get PRICE_END_DATE;

  SqlColumn get MAIN_PRICE;

  SqlColumn get MAIN_PROMO_START_DATE;

  SqlColumn get MAIN_PROMO_END_DATE;

  SqlColumn get MAIN_PROMO_PRICE;

  C_CATALOG_ITEM_Table alias(String alias);

  C_CATALOG_ITEM_Table clone({bool freeze});

}

class _C_CATALOG_ITEM_TableImpl extends SqlTableImpl implements C_CATALOG_ITEM_Table {
  static final Set<String> _pkNames = new Set.from(["id_catalog", "id_node"]);
  static final Set<String> _columnNames = new Set.from(["id_catalog", "id_node", "id_item_package", "id_price_list", "price_start_date", "price_end_date", "main_price", "main_promo_start_date", "main_promo_end_date", "main_promo_price"]);

  _C_CATALOG_ITEM_TableImpl(SqlSchema schema) : super("c_catalog_item", schema);

  _C_CATALOG_ITEM_TableImpl.aliased(String alias, _C_CATALOG_ITEM_TableImpl target)
      : super.aliased(alias, target);

  _C_CATALOG_ITEM_TableImpl.cloneFrom(_C_CATALOG_ITEM_TableImpl target, bool freeze)
      : super.cloneFrom(target, freeze);

  @override
  SqlColumn get ID_CATALOG => this["id_catalog"];

  @override
  SqlColumn get ID_NODE => this["id_node"];

  @override
  SqlColumn get ID_ITEM_PACKAGE => this["id_item_package"];

  @override
  SqlColumn get ID_PRICE_LIST => this["id_price_list"];

  @override
  SqlColumn get PRICE_START_DATE => this["price_start_date"];

  @override
  SqlColumn get PRICE_END_DATE => this["price_end_date"];

  @override
  SqlColumn get MAIN_PRICE => this["main_price"];

  @override
  SqlColumn get MAIN_PROMO_START_DATE => this["main_promo_start_date"];

  @override
  SqlColumn get MAIN_PROMO_END_DATE => this["main_promo_end_date"];

  @override
  SqlColumn get MAIN_PROMO_PRICE => this["main_promo_price"];

  @override
  Set<String> get primaryKeyNames => _pkNames;

  @override
  Set<String> get columnNames => _columnNames;

  @override
  C_CATALOG_ITEM_Table alias(String alias) => super.alias(alias);

  @override
  _C_CATALOG_ITEM_TableImpl clone({bool freeze}) => super.clone(freeze: freeze);

  @override
  _C_CATALOG_ITEM_TableImpl createClone(bool freeze) =>
      new _C_CATALOG_ITEM_TableImpl.cloneFrom(this, freeze);

  @override
  SqlTable createTableAlias(String alias) =>
      new _C_CATALOG_ITEM_TableImpl.aliased(alias, this);

}

abstract class CATALOG_Table implements SqlTable {

  SqlColumn get ID_CATALOG;

  SqlColumn get ID_ITEM_SET;

  SqlColumn get ID_PRICE_LIST;

  SqlColumn get PUBLIC_CATALOG;

  SqlColumn get L_NAME_IT;

  SqlColumn get L_NAME_EN;

  SqlColumn get L_NAME_DE;

  SqlColumn get L_NAME_FR;

  SqlColumn get L_NAME_ES;

  SqlColumn get L_NAME_PT;

  SqlColumn get L_NAME_RU;

  SqlColumn get L_NAME_ZH;

  SqlColumn get EXTERNAL_ID_REF;

  CATALOG_Table alias(String alias);

  CATALOG_Table clone({bool freeze});

}

class _CATALOG_TableImpl extends SqlTableImpl implements CATALOG_Table {
  static final Set<String> _pkNames = new Set.from(["id_catalog"]);
  static final Set<String> _columnNames = new Set.from(["id_catalog", "id_item_set", "id_price_list", "public_catalog", "l_name_it", "l_name_en", "l_name_de", "l_name_fr", "l_name_es", "l_name_pt", "l_name_ru", "l_name_zh", "external_id_ref"]);

  _CATALOG_TableImpl(SqlSchema schema) : super("catalog", schema);

  _CATALOG_TableImpl.aliased(String alias, _CATALOG_TableImpl target)
      : super.aliased(alias, target);

  _CATALOG_TableImpl.cloneFrom(_CATALOG_TableImpl target, bool freeze)
      : super.cloneFrom(target, freeze);

  @override
  SqlColumn get ID_CATALOG => this["id_catalog"];

  @override
  SqlColumn get ID_ITEM_SET => this["id_item_set"];

  @override
  SqlColumn get ID_PRICE_LIST => this["id_price_list"];

  @override
  SqlColumn get PUBLIC_CATALOG => this["public_catalog"];

  @override
  SqlColumn get L_NAME_IT => this["l_name_it"];

  @override
  SqlColumn get L_NAME_EN => this["l_name_en"];

  @override
  SqlColumn get L_NAME_DE => this["l_name_de"];

  @override
  SqlColumn get L_NAME_FR => this["l_name_fr"];

  @override
  SqlColumn get L_NAME_ES => this["l_name_es"];

  @override
  SqlColumn get L_NAME_PT => this["l_name_pt"];

  @override
  SqlColumn get L_NAME_RU => this["l_name_ru"];

  @override
  SqlColumn get L_NAME_ZH => this["l_name_zh"];

  @override
  SqlColumn get EXTERNAL_ID_REF => this["external_id_ref"];

  @override
  Set<String> get primaryKeyNames => _pkNames;

  @override
  Set<String> get columnNames => _columnNames;

  @override
  CATALOG_Table alias(String alias) => super.alias(alias);

  @override
  _CATALOG_TableImpl clone({bool freeze}) => super.clone(freeze: freeze);

  @override
  _CATALOG_TableImpl createClone(bool freeze) =>
      new _CATALOG_TableImpl.cloneFrom(this, freeze);

  @override
  SqlTable createTableAlias(String alias) =>
      new _CATALOG_TableImpl.aliased(alias, this);

}

abstract class CLASSIFICATION_FEATURE_TYPE_Table implements SqlTable {

  SqlColumn get ID_FEATURE_TYPE;

  SqlColumn get ID_CLASSIFICATION;

  SqlColumn get ID_URL;

  SqlColumn get CALCULATED;

  CLASSIFICATION_FEATURE_TYPE_Table alias(String alias);

  CLASSIFICATION_FEATURE_TYPE_Table clone({bool freeze});

}

class _CLASSIFICATION_FEATURE_TYPE_TableImpl extends SqlTableImpl implements CLASSIFICATION_FEATURE_TYPE_Table {
  static final Set<String> _pkNames = new Set.from(["id_feature_type", "id_classification"]);
  static final Set<String> _columnNames = new Set.from(["id_feature_type", "id_classification", "id_url", "calculated"]);

  _CLASSIFICATION_FEATURE_TYPE_TableImpl(SqlSchema schema) : super("classification_feature_type", schema);

  _CLASSIFICATION_FEATURE_TYPE_TableImpl.aliased(String alias, _CLASSIFICATION_FEATURE_TYPE_TableImpl target)
      : super.aliased(alias, target);

  _CLASSIFICATION_FEATURE_TYPE_TableImpl.cloneFrom(_CLASSIFICATION_FEATURE_TYPE_TableImpl target, bool freeze)
      : super.cloneFrom(target, freeze);

  @override
  SqlColumn get ID_FEATURE_TYPE => this["id_feature_type"];

  @override
  SqlColumn get ID_CLASSIFICATION => this["id_classification"];

  @override
  SqlColumn get ID_URL => this["id_url"];

  @override
  SqlColumn get CALCULATED => this["calculated"];

  @override
  Set<String> get primaryKeyNames => _pkNames;

  @override
  Set<String> get columnNames => _columnNames;

  @override
  CLASSIFICATION_FEATURE_TYPE_Table alias(String alias) => super.alias(alias);

  @override
  _CLASSIFICATION_FEATURE_TYPE_TableImpl clone({bool freeze}) => super.clone(freeze: freeze);

  @override
  _CLASSIFICATION_FEATURE_TYPE_TableImpl createClone(bool freeze) =>
      new _CLASSIFICATION_FEATURE_TYPE_TableImpl.cloneFrom(this, freeze);

  @override
  SqlTable createTableAlias(String alias) =>
      new _CLASSIFICATION_FEATURE_TYPE_TableImpl.aliased(alias, this);

}

abstract class DETAIL_Table implements SqlTable {

  SqlColumn get ID_DETAIL;

  SqlColumn get ID_URL;

  SqlColumn get L_NAME_IT;

  SqlColumn get L_NAME_EN;

  SqlColumn get L_NAME_DE;

  SqlColumn get L_NAME_FR;

  SqlColumn get L_NAME_ES;

  SqlColumn get L_NAME_PT;

  SqlColumn get L_NAME_RU;

  SqlColumn get L_NAME_ZH;

  SqlColumn get L_DESCRIPTION_IT;

  SqlColumn get L_DESCRIPTION_EN;

  SqlColumn get L_DESCRIPTION_DE;

  SqlColumn get L_DESCRIPTION_FR;

  SqlColumn get L_DESCRIPTION_ES;

  SqlColumn get L_DESCRIPTION_PT;

  SqlColumn get L_DESCRIPTION_RU;

  SqlColumn get L_DESCRIPTION_ZH;

  SqlColumn get EXTERNAL_ID_REF;

  DETAIL_Table alias(String alias);

  DETAIL_Table clone({bool freeze});

}

class _DETAIL_TableImpl extends SqlTableImpl implements DETAIL_Table {
  static final Set<String> _pkNames = new Set.from(["id_detail"]);
  static final Set<String> _columnNames = new Set.from(["id_detail", "id_url", "l_name_it", "l_name_en", "l_name_de", "l_name_fr", "l_name_es", "l_name_pt", "l_name_ru", "l_name_zh", "l_description_it", "l_description_en", "l_description_de", "l_description_fr", "l_description_es", "l_description_pt", "l_description_ru", "l_description_zh", "external_id_ref"]);

  _DETAIL_TableImpl(SqlSchema schema) : super("detail", schema);

  _DETAIL_TableImpl.aliased(String alias, _DETAIL_TableImpl target)
      : super.aliased(alias, target);

  _DETAIL_TableImpl.cloneFrom(_DETAIL_TableImpl target, bool freeze)
      : super.cloneFrom(target, freeze);

  @override
  SqlColumn get ID_DETAIL => this["id_detail"];

  @override
  SqlColumn get ID_URL => this["id_url"];

  @override
  SqlColumn get L_NAME_IT => this["l_name_it"];

  @override
  SqlColumn get L_NAME_EN => this["l_name_en"];

  @override
  SqlColumn get L_NAME_DE => this["l_name_de"];

  @override
  SqlColumn get L_NAME_FR => this["l_name_fr"];

  @override
  SqlColumn get L_NAME_ES => this["l_name_es"];

  @override
  SqlColumn get L_NAME_PT => this["l_name_pt"];

  @override
  SqlColumn get L_NAME_RU => this["l_name_ru"];

  @override
  SqlColumn get L_NAME_ZH => this["l_name_zh"];

  @override
  SqlColumn get L_DESCRIPTION_IT => this["l_description_it"];

  @override
  SqlColumn get L_DESCRIPTION_EN => this["l_description_en"];

  @override
  SqlColumn get L_DESCRIPTION_DE => this["l_description_de"];

  @override
  SqlColumn get L_DESCRIPTION_FR => this["l_description_fr"];

  @override
  SqlColumn get L_DESCRIPTION_ES => this["l_description_es"];

  @override
  SqlColumn get L_DESCRIPTION_PT => this["l_description_pt"];

  @override
  SqlColumn get L_DESCRIPTION_RU => this["l_description_ru"];

  @override
  SqlColumn get L_DESCRIPTION_ZH => this["l_description_zh"];

  @override
  SqlColumn get EXTERNAL_ID_REF => this["external_id_ref"];

  @override
  Set<String> get primaryKeyNames => _pkNames;

  @override
  Set<String> get columnNames => _columnNames;

  @override
  DETAIL_Table alias(String alias) => super.alias(alias);

  @override
  _DETAIL_TableImpl clone({bool freeze}) => super.clone(freeze: freeze);

  @override
  _DETAIL_TableImpl createClone(bool freeze) =>
      new _DETAIL_TableImpl.cloneFrom(this, freeze);

  @override
  SqlTable createTableAlias(String alias) =>
      new _DETAIL_TableImpl.aliased(alias, this);

}

abstract class DOMAIN_CURRENCY_Table implements SqlTable {

  SqlColumn get CURRENCY_ISO_CODE;

  DOMAIN_CURRENCY_Table alias(String alias);

  DOMAIN_CURRENCY_Table clone({bool freeze});

}

class _DOMAIN_CURRENCY_TableImpl extends SqlTableImpl implements DOMAIN_CURRENCY_Table {
  static final Set<String> _pkNames = new Set.from(["currency_iso_code"]);
  static final Set<String> _columnNames = new Set.from(["currency_iso_code"]);

  _DOMAIN_CURRENCY_TableImpl(SqlSchema schema) : super("domain_currency", schema);

  _DOMAIN_CURRENCY_TableImpl.aliased(String alias, _DOMAIN_CURRENCY_TableImpl target)
      : super.aliased(alias, target);

  _DOMAIN_CURRENCY_TableImpl.cloneFrom(_DOMAIN_CURRENCY_TableImpl target, bool freeze)
      : super.cloneFrom(target, freeze);

  @override
  SqlColumn get CURRENCY_ISO_CODE => this["currency_iso_code"];

  @override
  Set<String> get primaryKeyNames => _pkNames;

  @override
  Set<String> get columnNames => _columnNames;

  @override
  DOMAIN_CURRENCY_Table alias(String alias) => super.alias(alias);

  @override
  _DOMAIN_CURRENCY_TableImpl clone({bool freeze}) => super.clone(freeze: freeze);

  @override
  _DOMAIN_CURRENCY_TableImpl createClone(bool freeze) =>
      new _DOMAIN_CURRENCY_TableImpl.cloneFrom(this, freeze);

  @override
  SqlTable createTableAlias(String alias) =>
      new _DOMAIN_CURRENCY_TableImpl.aliased(alias, this);

}

abstract class FEATURE_Table implements SqlTable {

  SqlColumn get ID_FEATURE;

  SqlColumn get ID_FEATURE_TYPE;

  SqlColumn get SORTING;

  SqlColumn get L_NAME_IT;

  SqlColumn get L_NAME_EN;

  SqlColumn get L_NAME_DE;

  SqlColumn get L_NAME_FR;

  SqlColumn get L_NAME_ES;

  SqlColumn get L_NAME_PT;

  SqlColumn get L_NAME_RU;

  SqlColumn get L_NAME_ZH;

  SqlColumn get EXTERNAL_ID_REF;

  FEATURE_Table alias(String alias);

  FEATURE_Table clone({bool freeze});

}

class _FEATURE_TableImpl extends SqlTableImpl implements FEATURE_Table {
  static final Set<String> _pkNames = new Set.from(["id_feature"]);
  static final Set<String> _columnNames = new Set.from(["id_feature", "id_feature_type", "sorting", "l_name_it", "l_name_en", "l_name_de", "l_name_fr", "l_name_es", "l_name_pt", "l_name_ru", "l_name_zh", "external_id_ref"]);

  _FEATURE_TableImpl(SqlSchema schema) : super("feature", schema);

  _FEATURE_TableImpl.aliased(String alias, _FEATURE_TableImpl target)
      : super.aliased(alias, target);

  _FEATURE_TableImpl.cloneFrom(_FEATURE_TableImpl target, bool freeze)
      : super.cloneFrom(target, freeze);

  @override
  SqlColumn get ID_FEATURE => this["id_feature"];

  @override
  SqlColumn get ID_FEATURE_TYPE => this["id_feature_type"];

  @override
  SqlColumn get SORTING => this["sorting"];

  @override
  SqlColumn get L_NAME_IT => this["l_name_it"];

  @override
  SqlColumn get L_NAME_EN => this["l_name_en"];

  @override
  SqlColumn get L_NAME_DE => this["l_name_de"];

  @override
  SqlColumn get L_NAME_FR => this["l_name_fr"];

  @override
  SqlColumn get L_NAME_ES => this["l_name_es"];

  @override
  SqlColumn get L_NAME_PT => this["l_name_pt"];

  @override
  SqlColumn get L_NAME_RU => this["l_name_ru"];

  @override
  SqlColumn get L_NAME_ZH => this["l_name_zh"];

  @override
  SqlColumn get EXTERNAL_ID_REF => this["external_id_ref"];

  @override
  Set<String> get primaryKeyNames => _pkNames;

  @override
  Set<String> get columnNames => _columnNames;

  @override
  FEATURE_Table alias(String alias) => super.alias(alias);

  @override
  _FEATURE_TableImpl clone({bool freeze}) => super.clone(freeze: freeze);

  @override
  _FEATURE_TableImpl createClone(bool freeze) =>
      new _FEATURE_TableImpl.cloneFrom(this, freeze);

  @override
  SqlTable createTableAlias(String alias) =>
      new _FEATURE_TableImpl.aliased(alias, this);

}

abstract class FEATURE_TYPE_Table implements SqlTable {

  SqlColumn get ID_FEATURE_TYPE;

  SqlColumn get ID_FEATURE_TYPE_GROUP;

  SqlColumn get SORTING;

  SqlColumn get CODE;

  SqlColumn get SORTING_TYPE;

  SqlColumn get ACTIVE;

  SqlColumn get HASIMAGE;

  SqlColumn get L_NAME_IT;

  SqlColumn get L_NAME_EN;

  SqlColumn get L_NAME_DE;

  SqlColumn get L_NAME_FR;

  SqlColumn get L_NAME_ES;

  SqlColumn get L_NAME_PT;

  SqlColumn get L_NAME_RU;

  SqlColumn get L_NAME_ZH;

  SqlColumn get L_ID_MEASURE_IT;

  SqlColumn get L_ID_MEASURE_EN;

  SqlColumn get L_ID_MEASURE_DE;

  SqlColumn get L_ID_MEASURE_FR;

  SqlColumn get L_ID_MEASURE_ES;

  SqlColumn get L_ID_MEASURE_PT;

  SqlColumn get L_ID_MEASURE_RU;

  SqlColumn get L_ID_MEASURE_ZH;

  SqlColumn get EXTERNAL_ID_REF;

  SqlColumn get INTERNAL_DESCRIPTION;

  FEATURE_TYPE_Table alias(String alias);

  FEATURE_TYPE_Table clone({bool freeze});

}

class _FEATURE_TYPE_TableImpl extends SqlTableImpl implements FEATURE_TYPE_Table {
  static final Set<String> _pkNames = new Set.from(["id_feature_type"]);
  static final Set<String> _columnNames = new Set.from(["id_feature_type", "id_feature_type_group", "sorting", "code", "sorting_type", "active", "hasimage", "l_name_it", "l_name_en", "l_name_de", "l_name_fr", "l_name_es", "l_name_pt", "l_name_ru", "l_name_zh", "l_id_measure_it", "l_id_measure_en", "l_id_measure_de", "l_id_measure_fr", "l_id_measure_es", "l_id_measure_pt", "l_id_measure_ru", "l_id_measure_zh", "external_id_ref", "internal_description"]);

  _FEATURE_TYPE_TableImpl(SqlSchema schema) : super("feature_type", schema);

  _FEATURE_TYPE_TableImpl.aliased(String alias, _FEATURE_TYPE_TableImpl target)
      : super.aliased(alias, target);

  _FEATURE_TYPE_TableImpl.cloneFrom(_FEATURE_TYPE_TableImpl target, bool freeze)
      : super.cloneFrom(target, freeze);

  @override
  SqlColumn get ID_FEATURE_TYPE => this["id_feature_type"];

  @override
  SqlColumn get ID_FEATURE_TYPE_GROUP => this["id_feature_type_group"];

  @override
  SqlColumn get SORTING => this["sorting"];

  @override
  SqlColumn get CODE => this["code"];

  @override
  SqlColumn get SORTING_TYPE => this["sorting_type"];

  @override
  SqlColumn get ACTIVE => this["active"];

  @override
  SqlColumn get HASIMAGE => this["hasimage"];

  @override
  SqlColumn get L_NAME_IT => this["l_name_it"];

  @override
  SqlColumn get L_NAME_EN => this["l_name_en"];

  @override
  SqlColumn get L_NAME_DE => this["l_name_de"];

  @override
  SqlColumn get L_NAME_FR => this["l_name_fr"];

  @override
  SqlColumn get L_NAME_ES => this["l_name_es"];

  @override
  SqlColumn get L_NAME_PT => this["l_name_pt"];

  @override
  SqlColumn get L_NAME_RU => this["l_name_ru"];

  @override
  SqlColumn get L_NAME_ZH => this["l_name_zh"];

  @override
  SqlColumn get L_ID_MEASURE_IT => this["l_id_measure_it"];

  @override
  SqlColumn get L_ID_MEASURE_EN => this["l_id_measure_en"];

  @override
  SqlColumn get L_ID_MEASURE_DE => this["l_id_measure_de"];

  @override
  SqlColumn get L_ID_MEASURE_FR => this["l_id_measure_fr"];

  @override
  SqlColumn get L_ID_MEASURE_ES => this["l_id_measure_es"];

  @override
  SqlColumn get L_ID_MEASURE_PT => this["l_id_measure_pt"];

  @override
  SqlColumn get L_ID_MEASURE_RU => this["l_id_measure_ru"];

  @override
  SqlColumn get L_ID_MEASURE_ZH => this["l_id_measure_zh"];

  @override
  SqlColumn get EXTERNAL_ID_REF => this["external_id_ref"];

  @override
  SqlColumn get INTERNAL_DESCRIPTION => this["internal_description"];

  @override
  Set<String> get primaryKeyNames => _pkNames;

  @override
  Set<String> get columnNames => _columnNames;

  @override
  FEATURE_TYPE_Table alias(String alias) => super.alias(alias);

  @override
  _FEATURE_TYPE_TableImpl clone({bool freeze}) => super.clone(freeze: freeze);

  @override
  _FEATURE_TYPE_TableImpl createClone(bool freeze) =>
      new _FEATURE_TYPE_TableImpl.cloneFrom(this, freeze);

  @override
  SqlTable createTableAlias(String alias) =>
      new _FEATURE_TYPE_TableImpl.aliased(alias, this);

}

abstract class FEATURE_TYPE_GROUP_Table implements SqlTable {

  SqlColumn get ID_FEATURE_TYPE_GROUP;

  SqlColumn get SORTING;

  SqlColumn get L_NAME_IT;

  SqlColumn get L_NAME_EN;

  SqlColumn get L_NAME_DE;

  SqlColumn get L_NAME_FR;

  SqlColumn get L_NAME_ES;

  SqlColumn get L_NAME_PT;

  SqlColumn get L_NAME_RU;

  SqlColumn get L_NAME_ZH;

  SqlColumn get EXTERNAL_ID_REF;

  FEATURE_TYPE_GROUP_Table alias(String alias);

  FEATURE_TYPE_GROUP_Table clone({bool freeze});

}

class _FEATURE_TYPE_GROUP_TableImpl extends SqlTableImpl implements FEATURE_TYPE_GROUP_Table {
  static final Set<String> _pkNames = new Set.from(["id_feature_type_group"]);
  static final Set<String> _columnNames = new Set.from(["id_feature_type_group", "sorting", "l_name_it", "l_name_en", "l_name_de", "l_name_fr", "l_name_es", "l_name_pt", "l_name_ru", "l_name_zh", "external_id_ref"]);

  _FEATURE_TYPE_GROUP_TableImpl(SqlSchema schema) : super("feature_type_group", schema);

  _FEATURE_TYPE_GROUP_TableImpl.aliased(String alias, _FEATURE_TYPE_GROUP_TableImpl target)
      : super.aliased(alias, target);

  _FEATURE_TYPE_GROUP_TableImpl.cloneFrom(_FEATURE_TYPE_GROUP_TableImpl target, bool freeze)
      : super.cloneFrom(target, freeze);

  @override
  SqlColumn get ID_FEATURE_TYPE_GROUP => this["id_feature_type_group"];

  @override
  SqlColumn get SORTING => this["sorting"];

  @override
  SqlColumn get L_NAME_IT => this["l_name_it"];

  @override
  SqlColumn get L_NAME_EN => this["l_name_en"];

  @override
  SqlColumn get L_NAME_DE => this["l_name_de"];

  @override
  SqlColumn get L_NAME_FR => this["l_name_fr"];

  @override
  SqlColumn get L_NAME_ES => this["l_name_es"];

  @override
  SqlColumn get L_NAME_PT => this["l_name_pt"];

  @override
  SqlColumn get L_NAME_RU => this["l_name_ru"];

  @override
  SqlColumn get L_NAME_ZH => this["l_name_zh"];

  @override
  SqlColumn get EXTERNAL_ID_REF => this["external_id_ref"];

  @override
  Set<String> get primaryKeyNames => _pkNames;

  @override
  Set<String> get columnNames => _columnNames;

  @override
  FEATURE_TYPE_GROUP_Table alias(String alias) => super.alias(alias);

  @override
  _FEATURE_TYPE_GROUP_TableImpl clone({bool freeze}) => super.clone(freeze: freeze);

  @override
  _FEATURE_TYPE_GROUP_TableImpl createClone(bool freeze) =>
      new _FEATURE_TYPE_GROUP_TableImpl.cloneFrom(this, freeze);

  @override
  SqlTable createTableAlias(String alias) =>
      new _FEATURE_TYPE_GROUP_TableImpl.aliased(alias, this);

}

abstract class FILESYSTEM_Table implements SqlTable {

  SqlColumn get RELATIVE_PATH;

  SqlColumn get LAST_MODIFIED;

  SqlColumn get LENGTH;

  FILESYSTEM_Table alias(String alias);

  FILESYSTEM_Table clone({bool freeze});

}

class _FILESYSTEM_TableImpl extends SqlTableImpl implements FILESYSTEM_Table {
  static final Set<String> _pkNames = new Set.from(["relative_path"]);
  static final Set<String> _columnNames = new Set.from(["relative_path", "last_modified", "length"]);

  _FILESYSTEM_TableImpl(SqlSchema schema) : super("filesystem", schema);

  _FILESYSTEM_TableImpl.aliased(String alias, _FILESYSTEM_TableImpl target)
      : super.aliased(alias, target);

  _FILESYSTEM_TableImpl.cloneFrom(_FILESYSTEM_TableImpl target, bool freeze)
      : super.cloneFrom(target, freeze);

  @override
  SqlColumn get RELATIVE_PATH => this["relative_path"];

  @override
  SqlColumn get LAST_MODIFIED => this["last_modified"];

  @override
  SqlColumn get LENGTH => this["length"];

  @override
  Set<String> get primaryKeyNames => _pkNames;

  @override
  Set<String> get columnNames => _columnNames;

  @override
  FILESYSTEM_Table alias(String alias) => super.alias(alias);

  @override
  _FILESYSTEM_TableImpl clone({bool freeze}) => super.clone(freeze: freeze);

  @override
  _FILESYSTEM_TableImpl createClone(bool freeze) =>
      new _FILESYSTEM_TableImpl.cloneFrom(this, freeze);

  @override
  SqlTable createTableAlias(String alias) =>
      new _FILESYSTEM_TableImpl.aliased(alias, this);

}

abstract class INFO_Table implements SqlTable {

  SqlColumn get LAST_ID_SYNC;

  INFO_Table alias(String alias);

  INFO_Table clone({bool freeze});

}

class _INFO_TableImpl extends SqlTableImpl implements INFO_Table {
  static final Set<String> _pkNames = new Set.from([]);
  static final Set<String> _columnNames = new Set.from(["last_id_sync"]);

  _INFO_TableImpl(SqlSchema schema) : super("info", schema);

  _INFO_TableImpl.aliased(String alias, _INFO_TableImpl target)
      : super.aliased(alias, target);

  _INFO_TableImpl.cloneFrom(_INFO_TableImpl target, bool freeze)
      : super.cloneFrom(target, freeze);

  @override
  SqlColumn get LAST_ID_SYNC => this["last_id_sync"];

  @override
  Set<String> get primaryKeyNames => _pkNames;

  @override
  Set<String> get columnNames => _columnNames;

  @override
  INFO_Table alias(String alias) => super.alias(alias);

  @override
  _INFO_TableImpl clone({bool freeze}) => super.clone(freeze: freeze);

  @override
  _INFO_TableImpl createClone(bool freeze) =>
      new _INFO_TableImpl.cloneFrom(this, freeze);

  @override
  SqlTable createTableAlias(String alias) =>
      new _INFO_TableImpl.aliased(alias, this);

}

abstract class ITEM_GROUP_Table implements SqlTable {

  SqlColumn get ID_ITEM_GROUP;

  SqlColumn get ID_ITEM_GROUP_TYPE;

  SqlColumn get ID_ITEM;

  SqlColumn get SORTING_TYPE;

  SqlColumn get ACTIVE;

  SqlColumn get L_NAME_IT;

  SqlColumn get L_NAME_EN;

  SqlColumn get L_NAME_DE;

  SqlColumn get L_NAME_FR;

  SqlColumn get L_NAME_ES;

  SqlColumn get L_NAME_PT;

  SqlColumn get L_NAME_RU;

  SqlColumn get L_NAME_ZH;

  SqlColumn get EXTERNAL_ID_REF;

  ITEM_GROUP_Table alias(String alias);

  ITEM_GROUP_Table clone({bool freeze});

}

class _ITEM_GROUP_TableImpl extends SqlTableImpl implements ITEM_GROUP_Table {
  static final Set<String> _pkNames = new Set.from(["id_item_group"]);
  static final Set<String> _columnNames = new Set.from(["id_item_group", "id_item_group_type", "id_item", "sorting_type", "active", "l_name_it", "l_name_en", "l_name_de", "l_name_fr", "l_name_es", "l_name_pt", "l_name_ru", "l_name_zh", "external_id_ref"]);

  _ITEM_GROUP_TableImpl(SqlSchema schema) : super("item_group", schema);

  _ITEM_GROUP_TableImpl.aliased(String alias, _ITEM_GROUP_TableImpl target)
      : super.aliased(alias, target);

  _ITEM_GROUP_TableImpl.cloneFrom(_ITEM_GROUP_TableImpl target, bool freeze)
      : super.cloneFrom(target, freeze);

  @override
  SqlColumn get ID_ITEM_GROUP => this["id_item_group"];

  @override
  SqlColumn get ID_ITEM_GROUP_TYPE => this["id_item_group_type"];

  @override
  SqlColumn get ID_ITEM => this["id_item"];

  @override
  SqlColumn get SORTING_TYPE => this["sorting_type"];

  @override
  SqlColumn get ACTIVE => this["active"];

  @override
  SqlColumn get L_NAME_IT => this["l_name_it"];

  @override
  SqlColumn get L_NAME_EN => this["l_name_en"];

  @override
  SqlColumn get L_NAME_DE => this["l_name_de"];

  @override
  SqlColumn get L_NAME_FR => this["l_name_fr"];

  @override
  SqlColumn get L_NAME_ES => this["l_name_es"];

  @override
  SqlColumn get L_NAME_PT => this["l_name_pt"];

  @override
  SqlColumn get L_NAME_RU => this["l_name_ru"];

  @override
  SqlColumn get L_NAME_ZH => this["l_name_zh"];

  @override
  SqlColumn get EXTERNAL_ID_REF => this["external_id_ref"];

  @override
  Set<String> get primaryKeyNames => _pkNames;

  @override
  Set<String> get columnNames => _columnNames;

  @override
  ITEM_GROUP_Table alias(String alias) => super.alias(alias);

  @override
  _ITEM_GROUP_TableImpl clone({bool freeze}) => super.clone(freeze: freeze);

  @override
  _ITEM_GROUP_TableImpl createClone(bool freeze) =>
      new _ITEM_GROUP_TableImpl.cloneFrom(this, freeze);

  @override
  SqlTable createTableAlias(String alias) =>
      new _ITEM_GROUP_TableImpl.aliased(alias, this);

}

abstract class ITEM_GROUP_DETAIL_Table implements SqlTable {

  SqlColumn get ID_ITEM_GROUP;

  SqlColumn get ID_ITEM;

  SqlColumn get REFERENCE;

  SqlColumn get SORTING;

  ITEM_GROUP_DETAIL_Table alias(String alias);

  ITEM_GROUP_DETAIL_Table clone({bool freeze});

}

class _ITEM_GROUP_DETAIL_TableImpl extends SqlTableImpl implements ITEM_GROUP_DETAIL_Table {
  static final Set<String> _pkNames = new Set.from(["id_item_group", "id_item"]);
  static final Set<String> _columnNames = new Set.from(["id_item_group", "id_item", "reference", "sorting"]);

  _ITEM_GROUP_DETAIL_TableImpl(SqlSchema schema) : super("item_group_detail", schema);

  _ITEM_GROUP_DETAIL_TableImpl.aliased(String alias, _ITEM_GROUP_DETAIL_TableImpl target)
      : super.aliased(alias, target);

  _ITEM_GROUP_DETAIL_TableImpl.cloneFrom(_ITEM_GROUP_DETAIL_TableImpl target, bool freeze)
      : super.cloneFrom(target, freeze);

  @override
  SqlColumn get ID_ITEM_GROUP => this["id_item_group"];

  @override
  SqlColumn get ID_ITEM => this["id_item"];

  @override
  SqlColumn get REFERENCE => this["reference"];

  @override
  SqlColumn get SORTING => this["sorting"];

  @override
  Set<String> get primaryKeyNames => _pkNames;

  @override
  Set<String> get columnNames => _columnNames;

  @override
  ITEM_GROUP_DETAIL_Table alias(String alias) => super.alias(alias);

  @override
  _ITEM_GROUP_DETAIL_TableImpl clone({bool freeze}) => super.clone(freeze: freeze);

  @override
  _ITEM_GROUP_DETAIL_TableImpl createClone(bool freeze) =>
      new _ITEM_GROUP_DETAIL_TableImpl.cloneFrom(this, freeze);

  @override
  SqlTable createTableAlias(String alias) =>
      new _ITEM_GROUP_DETAIL_TableImpl.aliased(alias, this);

}

abstract class ITEM_GROUP_TYPE_Table implements SqlTable {

  SqlColumn get ID_ITEM_GROUP_TYPE;

  SqlColumn get L_NAME_IT;

  SqlColumn get L_NAME_EN;

  SqlColumn get L_NAME_DE;

  SqlColumn get L_NAME_FR;

  SqlColumn get L_NAME_ES;

  SqlColumn get L_NAME_PT;

  SqlColumn get L_NAME_RU;

  SqlColumn get L_NAME_ZH;

  ITEM_GROUP_TYPE_Table alias(String alias);

  ITEM_GROUP_TYPE_Table clone({bool freeze});

}

class _ITEM_GROUP_TYPE_TableImpl extends SqlTableImpl implements ITEM_GROUP_TYPE_Table {
  static final Set<String> _pkNames = new Set.from(["id_item_group_type"]);
  static final Set<String> _columnNames = new Set.from(["id_item_group_type", "l_name_it", "l_name_en", "l_name_de", "l_name_fr", "l_name_es", "l_name_pt", "l_name_ru", "l_name_zh"]);

  _ITEM_GROUP_TYPE_TableImpl(SqlSchema schema) : super("item_group_type", schema);

  _ITEM_GROUP_TYPE_TableImpl.aliased(String alias, _ITEM_GROUP_TYPE_TableImpl target)
      : super.aliased(alias, target);

  _ITEM_GROUP_TYPE_TableImpl.cloneFrom(_ITEM_GROUP_TYPE_TableImpl target, bool freeze)
      : super.cloneFrom(target, freeze);

  @override
  SqlColumn get ID_ITEM_GROUP_TYPE => this["id_item_group_type"];

  @override
  SqlColumn get L_NAME_IT => this["l_name_it"];

  @override
  SqlColumn get L_NAME_EN => this["l_name_en"];

  @override
  SqlColumn get L_NAME_DE => this["l_name_de"];

  @override
  SqlColumn get L_NAME_FR => this["l_name_fr"];

  @override
  SqlColumn get L_NAME_ES => this["l_name_es"];

  @override
  SqlColumn get L_NAME_PT => this["l_name_pt"];

  @override
  SqlColumn get L_NAME_RU => this["l_name_ru"];

  @override
  SqlColumn get L_NAME_ZH => this["l_name_zh"];

  @override
  Set<String> get primaryKeyNames => _pkNames;

  @override
  Set<String> get columnNames => _columnNames;

  @override
  ITEM_GROUP_TYPE_Table alias(String alias) => super.alias(alias);

  @override
  _ITEM_GROUP_TYPE_TableImpl clone({bool freeze}) => super.clone(freeze: freeze);

  @override
  _ITEM_GROUP_TYPE_TableImpl createClone(bool freeze) =>
      new _ITEM_GROUP_TYPE_TableImpl.cloneFrom(this, freeze);

  @override
  SqlTable createTableAlias(String alias) =>
      new _ITEM_GROUP_TYPE_TableImpl.aliased(alias, this);

}

abstract class ITEM_GROUP_URL_Table implements SqlTable {

  SqlColumn get ID_ITEM_GROUP;

  SqlColumn get ID_URL;

  SqlColumn get SORTING;

  ITEM_GROUP_URL_Table alias(String alias);

  ITEM_GROUP_URL_Table clone({bool freeze});

}

class _ITEM_GROUP_URL_TableImpl extends SqlTableImpl implements ITEM_GROUP_URL_Table {
  static final Set<String> _pkNames = new Set.from(["id_item_group", "id_url"]);
  static final Set<String> _columnNames = new Set.from(["id_item_group", "id_url", "sorting"]);

  _ITEM_GROUP_URL_TableImpl(SqlSchema schema) : super("item_group_url", schema);

  _ITEM_GROUP_URL_TableImpl.aliased(String alias, _ITEM_GROUP_URL_TableImpl target)
      : super.aliased(alias, target);

  _ITEM_GROUP_URL_TableImpl.cloneFrom(_ITEM_GROUP_URL_TableImpl target, bool freeze)
      : super.cloneFrom(target, freeze);

  @override
  SqlColumn get ID_ITEM_GROUP => this["id_item_group"];

  @override
  SqlColumn get ID_URL => this["id_url"];

  @override
  SqlColumn get SORTING => this["sorting"];

  @override
  Set<String> get primaryKeyNames => _pkNames;

  @override
  Set<String> get columnNames => _columnNames;

  @override
  ITEM_GROUP_URL_Table alias(String alias) => super.alias(alias);

  @override
  _ITEM_GROUP_URL_TableImpl clone({bool freeze}) => super.clone(freeze: freeze);

  @override
  _ITEM_GROUP_URL_TableImpl createClone(bool freeze) =>
      new _ITEM_GROUP_URL_TableImpl.cloneFrom(this, freeze);

  @override
  SqlTable createTableAlias(String alias) =>
      new _ITEM_GROUP_URL_TableImpl.aliased(alias, this);

}

abstract class ITEM_PACKAGE_Table implements SqlTable {

  SqlColumn get ID_ITEM_PACKAGE;

  SqlColumn get ID_NODE;

  SqlColumn get ID_PACKAGE;

  SqlColumn get QUANTITY;

  SqlColumn get SORTING;

  SqlColumn get EXTERNAL_ID_REF;

  ITEM_PACKAGE_Table alias(String alias);

  ITEM_PACKAGE_Table clone({bool freeze});

}

class _ITEM_PACKAGE_TableImpl extends SqlTableImpl implements ITEM_PACKAGE_Table {
  static final Set<String> _pkNames = new Set.from(["id_item_package"]);
  static final Set<String> _columnNames = new Set.from(["id_item_package", "id_node", "id_package", "quantity", "sorting", "external_id_ref"]);

  _ITEM_PACKAGE_TableImpl(SqlSchema schema) : super("item_package", schema);

  _ITEM_PACKAGE_TableImpl.aliased(String alias, _ITEM_PACKAGE_TableImpl target)
      : super.aliased(alias, target);

  _ITEM_PACKAGE_TableImpl.cloneFrom(_ITEM_PACKAGE_TableImpl target, bool freeze)
      : super.cloneFrom(target, freeze);

  @override
  SqlColumn get ID_ITEM_PACKAGE => this["id_item_package"];

  @override
  SqlColumn get ID_NODE => this["id_node"];

  @override
  SqlColumn get ID_PACKAGE => this["id_package"];

  @override
  SqlColumn get QUANTITY => this["quantity"];

  @override
  SqlColumn get SORTING => this["sorting"];

  @override
  SqlColumn get EXTERNAL_ID_REF => this["external_id_ref"];

  @override
  Set<String> get primaryKeyNames => _pkNames;

  @override
  Set<String> get columnNames => _columnNames;

  @override
  ITEM_PACKAGE_Table alias(String alias) => super.alias(alias);

  @override
  _ITEM_PACKAGE_TableImpl clone({bool freeze}) => super.clone(freeze: freeze);

  @override
  _ITEM_PACKAGE_TableImpl createClone(bool freeze) =>
      new _ITEM_PACKAGE_TableImpl.cloneFrom(this, freeze);

  @override
  SqlTable createTableAlias(String alias) =>
      new _ITEM_PACKAGE_TableImpl.aliased(alias, this);

}

abstract class ITEM_PACKAGE_PRICE_Table implements SqlTable {

  SqlColumn get ID_ITEM_PACKAGE;

  SqlColumn get ID_PRICE_LIST;

  SqlColumn get PRICE_START_DATE;

  SqlColumn get C_PRICE_END_DATE;

  SqlColumn get PRICE;

  SqlColumn get EAN;

  SqlColumn get PROMO_START_DATE;

  SqlColumn get PROMO_END_DATE;

  SqlColumn get PROMO_PRICE;

  ITEM_PACKAGE_PRICE_Table alias(String alias);

  ITEM_PACKAGE_PRICE_Table clone({bool freeze});

}

class _ITEM_PACKAGE_PRICE_TableImpl extends SqlTableImpl implements ITEM_PACKAGE_PRICE_Table {
  static final Set<String> _pkNames = new Set.from(["id_item_package", "id_price_list", "price_start_date"]);
  static final Set<String> _columnNames = new Set.from(["id_item_package", "id_price_list", "price_start_date", "c_price_end_date", "price", "ean", "promo_start_date", "promo_end_date", "promo_price"]);

  _ITEM_PACKAGE_PRICE_TableImpl(SqlSchema schema) : super("item_package_price", schema);

  _ITEM_PACKAGE_PRICE_TableImpl.aliased(String alias, _ITEM_PACKAGE_PRICE_TableImpl target)
      : super.aliased(alias, target);

  _ITEM_PACKAGE_PRICE_TableImpl.cloneFrom(_ITEM_PACKAGE_PRICE_TableImpl target, bool freeze)
      : super.cloneFrom(target, freeze);

  @override
  SqlColumn get ID_ITEM_PACKAGE => this["id_item_package"];

  @override
  SqlColumn get ID_PRICE_LIST => this["id_price_list"];

  @override
  SqlColumn get PRICE_START_DATE => this["price_start_date"];

  @override
  SqlColumn get C_PRICE_END_DATE => this["c_price_end_date"];

  @override
  SqlColumn get PRICE => this["price"];

  @override
  SqlColumn get EAN => this["ean"];

  @override
  SqlColumn get PROMO_START_DATE => this["promo_start_date"];

  @override
  SqlColumn get PROMO_END_DATE => this["promo_end_date"];

  @override
  SqlColumn get PROMO_PRICE => this["promo_price"];

  @override
  Set<String> get primaryKeyNames => _pkNames;

  @override
  Set<String> get columnNames => _columnNames;

  @override
  ITEM_PACKAGE_PRICE_Table alias(String alias) => super.alias(alias);

  @override
  _ITEM_PACKAGE_PRICE_TableImpl clone({bool freeze}) => super.clone(freeze: freeze);

  @override
  _ITEM_PACKAGE_PRICE_TableImpl createClone(bool freeze) =>
      new _ITEM_PACKAGE_PRICE_TableImpl.cloneFrom(this, freeze);

  @override
  SqlTable createTableAlias(String alias) =>
      new _ITEM_PACKAGE_PRICE_TableImpl.aliased(alias, this);

}

abstract class ITEM_SET_Table implements SqlTable {

  SqlColumn get ID_ITEM_SET;

  SqlColumn get SET_TYPE;

  SqlColumn get NAME;

  SqlColumn get EXTERNAL_ID_REF;

  ITEM_SET_Table alias(String alias);

  ITEM_SET_Table clone({bool freeze});

}

class _ITEM_SET_TableImpl extends SqlTableImpl implements ITEM_SET_Table {
  static final Set<String> _pkNames = new Set.from(["id_item_set"]);
  static final Set<String> _columnNames = new Set.from(["id_item_set", "set_type", "name", "external_id_ref"]);

  _ITEM_SET_TableImpl(SqlSchema schema) : super("item_set", schema);

  _ITEM_SET_TableImpl.aliased(String alias, _ITEM_SET_TableImpl target)
      : super.aliased(alias, target);

  _ITEM_SET_TableImpl.cloneFrom(_ITEM_SET_TableImpl target, bool freeze)
      : super.cloneFrom(target, freeze);

  @override
  SqlColumn get ID_ITEM_SET => this["id_item_set"];

  @override
  SqlColumn get SET_TYPE => this["set_type"];

  @override
  SqlColumn get NAME => this["name"];

  @override
  SqlColumn get EXTERNAL_ID_REF => this["external_id_ref"];

  @override
  Set<String> get primaryKeyNames => _pkNames;

  @override
  Set<String> get columnNames => _columnNames;

  @override
  ITEM_SET_Table alias(String alias) => super.alias(alias);

  @override
  _ITEM_SET_TableImpl clone({bool freeze}) => super.clone(freeze: freeze);

  @override
  _ITEM_SET_TableImpl createClone(bool freeze) =>
      new _ITEM_SET_TableImpl.cloneFrom(this, freeze);

  @override
  SqlTable createTableAlias(String alias) =>
      new _ITEM_SET_TableImpl.aliased(alias, this);

}

abstract class ITEM_SET_DETAIL_Table implements SqlTable {

  SqlColumn get ID_ITEM_SET;

  SqlColumn get ID_ITEM_SET_DETAIL;

  SqlColumn get ID_NODE;

  SqlColumn get ID_BRAND;

  SqlColumn get EXTERNAL_ID_REF;

  ITEM_SET_DETAIL_Table alias(String alias);

  ITEM_SET_DETAIL_Table clone({bool freeze});

}

class _ITEM_SET_DETAIL_TableImpl extends SqlTableImpl implements ITEM_SET_DETAIL_Table {
  static final Set<String> _pkNames = new Set.from(["id_item_set_detail"]);
  static final Set<String> _columnNames = new Set.from(["id_item_set", "id_item_set_detail", "id_node", "id_brand", "external_id_ref"]);

  _ITEM_SET_DETAIL_TableImpl(SqlSchema schema) : super("item_set_detail", schema);

  _ITEM_SET_DETAIL_TableImpl.aliased(String alias, _ITEM_SET_DETAIL_TableImpl target)
      : super.aliased(alias, target);

  _ITEM_SET_DETAIL_TableImpl.cloneFrom(_ITEM_SET_DETAIL_TableImpl target, bool freeze)
      : super.cloneFrom(target, freeze);

  @override
  SqlColumn get ID_ITEM_SET => this["id_item_set"];

  @override
  SqlColumn get ID_ITEM_SET_DETAIL => this["id_item_set_detail"];

  @override
  SqlColumn get ID_NODE => this["id_node"];

  @override
  SqlColumn get ID_BRAND => this["id_brand"];

  @override
  SqlColumn get EXTERNAL_ID_REF => this["external_id_ref"];

  @override
  Set<String> get primaryKeyNames => _pkNames;

  @override
  Set<String> get columnNames => _columnNames;

  @override
  ITEM_SET_DETAIL_Table alias(String alias) => super.alias(alias);

  @override
  _ITEM_SET_DETAIL_TableImpl clone({bool freeze}) => super.clone(freeze: freeze);

  @override
  _ITEM_SET_DETAIL_TableImpl createClone(bool freeze) =>
      new _ITEM_SET_DETAIL_TableImpl.cloneFrom(this, freeze);

  @override
  SqlTable createTableAlias(String alias) =>
      new _ITEM_SET_DETAIL_TableImpl.aliased(alias, this);

}

abstract class MEASURE_Table implements SqlTable {

  SqlColumn get ID_MEASURE;

  SqlColumn get L_NAME_IT;

  SqlColumn get L_NAME_EN;

  SqlColumn get L_NAME_DE;

  SqlColumn get L_NAME_FR;

  SqlColumn get L_NAME_ES;

  SqlColumn get L_NAME_PT;

  SqlColumn get L_NAME_RU;

  SqlColumn get L_NAME_ZH;

  SqlColumn get L_CODE_IT;

  SqlColumn get L_CODE_EN;

  SqlColumn get L_CODE_DE;

  SqlColumn get L_CODE_FR;

  SqlColumn get L_CODE_ES;

  SqlColumn get L_CODE_PT;

  SqlColumn get L_CODE_RU;

  SqlColumn get L_CODE_ZH;

  SqlColumn get EXTERNAL_ID_REF;

  MEASURE_Table alias(String alias);

  MEASURE_Table clone({bool freeze});

}

class _MEASURE_TableImpl extends SqlTableImpl implements MEASURE_Table {
  static final Set<String> _pkNames = new Set.from(["id_measure"]);
  static final Set<String> _columnNames = new Set.from(["id_measure", "l_name_it", "l_name_en", "l_name_de", "l_name_fr", "l_name_es", "l_name_pt", "l_name_ru", "l_name_zh", "l_code_it", "l_code_en", "l_code_de", "l_code_fr", "l_code_es", "l_code_pt", "l_code_ru", "l_code_zh", "external_id_ref"]);

  _MEASURE_TableImpl(SqlSchema schema) : super("measure", schema);

  _MEASURE_TableImpl.aliased(String alias, _MEASURE_TableImpl target)
      : super.aliased(alias, target);

  _MEASURE_TableImpl.cloneFrom(_MEASURE_TableImpl target, bool freeze)
      : super.cloneFrom(target, freeze);

  @override
  SqlColumn get ID_MEASURE => this["id_measure"];

  @override
  SqlColumn get L_NAME_IT => this["l_name_it"];

  @override
  SqlColumn get L_NAME_EN => this["l_name_en"];

  @override
  SqlColumn get L_NAME_DE => this["l_name_de"];

  @override
  SqlColumn get L_NAME_FR => this["l_name_fr"];

  @override
  SqlColumn get L_NAME_ES => this["l_name_es"];

  @override
  SqlColumn get L_NAME_PT => this["l_name_pt"];

  @override
  SqlColumn get L_NAME_RU => this["l_name_ru"];

  @override
  SqlColumn get L_NAME_ZH => this["l_name_zh"];

  @override
  SqlColumn get L_CODE_IT => this["l_code_it"];

  @override
  SqlColumn get L_CODE_EN => this["l_code_en"];

  @override
  SqlColumn get L_CODE_DE => this["l_code_de"];

  @override
  SqlColumn get L_CODE_FR => this["l_code_fr"];

  @override
  SqlColumn get L_CODE_ES => this["l_code_es"];

  @override
  SqlColumn get L_CODE_PT => this["l_code_pt"];

  @override
  SqlColumn get L_CODE_RU => this["l_code_ru"];

  @override
  SqlColumn get L_CODE_ZH => this["l_code_zh"];

  @override
  SqlColumn get EXTERNAL_ID_REF => this["external_id_ref"];

  @override
  Set<String> get primaryKeyNames => _pkNames;

  @override
  Set<String> get columnNames => _columnNames;

  @override
  MEASURE_Table alias(String alias) => super.alias(alias);

  @override
  _MEASURE_TableImpl clone({bool freeze}) => super.clone(freeze: freeze);

  @override
  _MEASURE_TableImpl createClone(bool freeze) =>
      new _MEASURE_TableImpl.cloneFrom(this, freeze);

  @override
  SqlTable createTableAlias(String alias) =>
      new _MEASURE_TableImpl.aliased(alias, this);

}

abstract class NODE_Table implements SqlTable {

  SqlColumn get ID_NODE;

  SqlColumn get ID_NODE_TYPE;

  SqlColumn get ID_PARENT_NODE;

  SqlColumn get ID_BRAND;

  SqlColumn get C_ID_PARENT_CLASSIFICATION;

  SqlColumn get C_ID_PARENT_CLASSIFICATION1;

  SqlColumn get C_ID_PARENT_CLASSIFICATION2;

  SqlColumn get C_ID_PARENT_CLASSIFICATION3;

  SqlColumn get C_ID_PARENT_CLASSIFICATION4;

  SqlColumn get C_ID_PARENT_CLASSIFICATION5;

  SqlColumn get C_ID_PARENT_CLASSIFICATION6;

  SqlColumn get X_NEW_START_DATE;

  SqlColumn get X_NEW_END_DATE;

  SqlColumn get X_ID_ITEM_URL;

  SqlColumn get X_ID_CLASSIFICATION_URL;

  SqlColumn get C_MAIN_QUANTITY;

  SqlColumn get C_MAIN_ID_ITEM_PACKAGE;

  SqlColumn get C_HAS_SECONDARY_ITEM_PACKAGES;

  SqlColumn get SORTING;

  SqlColumn get ACTIVE;

  SqlColumn get VIRTUAL;

  SqlColumn get XL_NAME_IT;

  SqlColumn get XL_NAME_EN;

  SqlColumn get XL_NAME_DE;

  SqlColumn get XL_NAME_FR;

  SqlColumn get XL_NAME_ES;

  SqlColumn get XL_NAME_PT;

  SqlColumn get XL_NAME_RU;

  SqlColumn get XL_NAME_ZH;

  SqlColumn get L_DESCRIPTION_IT;

  SqlColumn get L_DESCRIPTION_EN;

  SqlColumn get L_DESCRIPTION_DE;

  SqlColumn get L_DESCRIPTION_FR;

  SqlColumn get L_DESCRIPTION_ES;

  SqlColumn get L_DESCRIPTION_PT;

  SqlColumn get L_DESCRIPTION_RU;

  SqlColumn get L_DESCRIPTION_ZH;

  SqlColumn get H_X_NEW_START_DATE;

  SqlColumn get H_X_NEW_END_DATE;

  SqlColumn get H_X_ID_ITEM_URL;

  SqlColumn get H_X_ID_CLASSIFICATION_URL;

  SqlColumn get H_XL_NAME_IT;

  SqlColumn get H_XL_NAME_EN;

  SqlColumn get H_XL_NAME_DE;

  SqlColumn get H_XL_NAME_FR;

  SqlColumn get H_XL_NAME_ES;

  SqlColumn get H_XL_NAME_PT;

  SqlColumn get H_XL_NAME_RU;

  SqlColumn get H_XL_NAME_ZH;

  NODE_Table alias(String alias);

  NODE_Table clone({bool freeze});

}

class _NODE_TableImpl extends SqlTableImpl implements NODE_Table {
  static final Set<String> _pkNames = new Set.from(["id_node"]);
  static final Set<String> _columnNames = new Set.from(["id_node", "id_node_type", "id_parent_node", "id_brand", "c_id_parent_classification", "c_id_parent_classification1", "c_id_parent_classification2", "c_id_parent_classification3", "c_id_parent_classification4", "c_id_parent_classification5", "c_id_parent_classification6", "x_new_start_date", "x_new_end_date", "x_id_item_url", "x_id_classification_url", "c_main_quantity", "c_main_id_item_package", "c_has_secondary_item_packages", "sorting", "active", "virtual", "xl_name_it", "xl_name_en", "xl_name_de", "xl_name_fr", "xl_name_es", "xl_name_pt", "xl_name_ru", "xl_name_zh", "l_description_it", "l_description_en", "l_description_de", "l_description_fr", "l_description_es", "l_description_pt", "l_description_ru", "l_description_zh", "h_x_new_start_date", "h_x_new_end_date", "h_x_id_item_url", "h_x_id_classification_url", "h_xl_name_it", "h_xl_name_en", "h_xl_name_de", "h_xl_name_fr", "h_xl_name_es", "h_xl_name_pt", "h_xl_name_ru", "h_xl_name_zh"]);

  _NODE_TableImpl(SqlSchema schema) : super("node", schema);

  _NODE_TableImpl.aliased(String alias, _NODE_TableImpl target)
      : super.aliased(alias, target);

  _NODE_TableImpl.cloneFrom(_NODE_TableImpl target, bool freeze)
      : super.cloneFrom(target, freeze);

  @override
  SqlColumn get ID_NODE => this["id_node"];

  @override
  SqlColumn get ID_NODE_TYPE => this["id_node_type"];

  @override
  SqlColumn get ID_PARENT_NODE => this["id_parent_node"];

  @override
  SqlColumn get ID_BRAND => this["id_brand"];

  @override
  SqlColumn get C_ID_PARENT_CLASSIFICATION => this["c_id_parent_classification"];

  @override
  SqlColumn get C_ID_PARENT_CLASSIFICATION1 => this["c_id_parent_classification1"];

  @override
  SqlColumn get C_ID_PARENT_CLASSIFICATION2 => this["c_id_parent_classification2"];

  @override
  SqlColumn get C_ID_PARENT_CLASSIFICATION3 => this["c_id_parent_classification3"];

  @override
  SqlColumn get C_ID_PARENT_CLASSIFICATION4 => this["c_id_parent_classification4"];

  @override
  SqlColumn get C_ID_PARENT_CLASSIFICATION5 => this["c_id_parent_classification5"];

  @override
  SqlColumn get C_ID_PARENT_CLASSIFICATION6 => this["c_id_parent_classification6"];

  @override
  SqlColumn get X_NEW_START_DATE => this["x_new_start_date"];

  @override
  SqlColumn get X_NEW_END_DATE => this["x_new_end_date"];

  @override
  SqlColumn get X_ID_ITEM_URL => this["x_id_item_url"];

  @override
  SqlColumn get X_ID_CLASSIFICATION_URL => this["x_id_classification_url"];

  @override
  SqlColumn get C_MAIN_QUANTITY => this["c_main_quantity"];

  @override
  SqlColumn get C_MAIN_ID_ITEM_PACKAGE => this["c_main_id_item_package"];

  @override
  SqlColumn get C_HAS_SECONDARY_ITEM_PACKAGES => this["c_has_secondary_item_packages"];

  @override
  SqlColumn get SORTING => this["sorting"];

  @override
  SqlColumn get ACTIVE => this["active"];

  @override
  SqlColumn get VIRTUAL => this["virtual"];

  @override
  SqlColumn get XL_NAME_IT => this["xl_name_it"];

  @override
  SqlColumn get XL_NAME_EN => this["xl_name_en"];

  @override
  SqlColumn get XL_NAME_DE => this["xl_name_de"];

  @override
  SqlColumn get XL_NAME_FR => this["xl_name_fr"];

  @override
  SqlColumn get XL_NAME_ES => this["xl_name_es"];

  @override
  SqlColumn get XL_NAME_PT => this["xl_name_pt"];

  @override
  SqlColumn get XL_NAME_RU => this["xl_name_ru"];

  @override
  SqlColumn get XL_NAME_ZH => this["xl_name_zh"];

  @override
  SqlColumn get L_DESCRIPTION_IT => this["l_description_it"];

  @override
  SqlColumn get L_DESCRIPTION_EN => this["l_description_en"];

  @override
  SqlColumn get L_DESCRIPTION_DE => this["l_description_de"];

  @override
  SqlColumn get L_DESCRIPTION_FR => this["l_description_fr"];

  @override
  SqlColumn get L_DESCRIPTION_ES => this["l_description_es"];

  @override
  SqlColumn get L_DESCRIPTION_PT => this["l_description_pt"];

  @override
  SqlColumn get L_DESCRIPTION_RU => this["l_description_ru"];

  @override
  SqlColumn get L_DESCRIPTION_ZH => this["l_description_zh"];

  @override
  SqlColumn get H_X_NEW_START_DATE => this["h_x_new_start_date"];

  @override
  SqlColumn get H_X_NEW_END_DATE => this["h_x_new_end_date"];

  @override
  SqlColumn get H_X_ID_ITEM_URL => this["h_x_id_item_url"];

  @override
  SqlColumn get H_X_ID_CLASSIFICATION_URL => this["h_x_id_classification_url"];

  @override
  SqlColumn get H_XL_NAME_IT => this["h_xl_name_it"];

  @override
  SqlColumn get H_XL_NAME_EN => this["h_xl_name_en"];

  @override
  SqlColumn get H_XL_NAME_DE => this["h_xl_name_de"];

  @override
  SqlColumn get H_XL_NAME_FR => this["h_xl_name_fr"];

  @override
  SqlColumn get H_XL_NAME_ES => this["h_xl_name_es"];

  @override
  SqlColumn get H_XL_NAME_PT => this["h_xl_name_pt"];

  @override
  SqlColumn get H_XL_NAME_RU => this["h_xl_name_ru"];

  @override
  SqlColumn get H_XL_NAME_ZH => this["h_xl_name_zh"];

  @override
  Set<String> get primaryKeyNames => _pkNames;

  @override
  Set<String> get columnNames => _columnNames;

  @override
  NODE_Table alias(String alias) => super.alias(alias);

  @override
  _NODE_TableImpl clone({bool freeze}) => super.clone(freeze: freeze);

  @override
  _NODE_TableImpl createClone(bool freeze) =>
      new _NODE_TableImpl.cloneFrom(this, freeze);

  @override
  SqlTable createTableAlias(String alias) =>
      new _NODE_TableImpl.aliased(alias, this);

}

abstract class NODE_DETAIL_Table implements SqlTable {

  SqlColumn get ID_NODE;

  SqlColumn get ID_DETAIL;

  SqlColumn get SORTING;

  NODE_DETAIL_Table alias(String alias);

  NODE_DETAIL_Table clone({bool freeze});

}

class _NODE_DETAIL_TableImpl extends SqlTableImpl implements NODE_DETAIL_Table {
  static final Set<String> _pkNames = new Set.from(["id_node", "id_detail"]);
  static final Set<String> _columnNames = new Set.from(["id_node", "id_detail", "sorting"]);

  _NODE_DETAIL_TableImpl(SqlSchema schema) : super("node_detail", schema);

  _NODE_DETAIL_TableImpl.aliased(String alias, _NODE_DETAIL_TableImpl target)
      : super.aliased(alias, target);

  _NODE_DETAIL_TableImpl.cloneFrom(_NODE_DETAIL_TableImpl target, bool freeze)
      : super.cloneFrom(target, freeze);

  @override
  SqlColumn get ID_NODE => this["id_node"];

  @override
  SqlColumn get ID_DETAIL => this["id_detail"];

  @override
  SqlColumn get SORTING => this["sorting"];

  @override
  Set<String> get primaryKeyNames => _pkNames;

  @override
  Set<String> get columnNames => _columnNames;

  @override
  NODE_DETAIL_Table alias(String alias) => super.alias(alias);

  @override
  _NODE_DETAIL_TableImpl clone({bool freeze}) => super.clone(freeze: freeze);

  @override
  _NODE_DETAIL_TableImpl createClone(bool freeze) =>
      new _NODE_DETAIL_TableImpl.cloneFrom(this, freeze);

  @override
  SqlTable createTableAlias(String alias) =>
      new _NODE_DETAIL_TableImpl.aliased(alias, this);

}

abstract class NODE_FEATURE_Table implements SqlTable {

  SqlColumn get ID_NODE;

  SqlColumn get ID_FEATURE_TYPE;

  SqlColumn get ID_FEATURE;

  SqlColumn get CALCULATED;

  NODE_FEATURE_Table alias(String alias);

  NODE_FEATURE_Table clone({bool freeze});

}

class _NODE_FEATURE_TableImpl extends SqlTableImpl implements NODE_FEATURE_Table {
  static final Set<String> _pkNames = new Set.from(["id_node", "id_feature_type"]);
  static final Set<String> _columnNames = new Set.from(["id_node", "id_feature_type", "id_feature", "calculated"]);

  _NODE_FEATURE_TableImpl(SqlSchema schema) : super("node_feature", schema);

  _NODE_FEATURE_TableImpl.aliased(String alias, _NODE_FEATURE_TableImpl target)
      : super.aliased(alias, target);

  _NODE_FEATURE_TableImpl.cloneFrom(_NODE_FEATURE_TableImpl target, bool freeze)
      : super.cloneFrom(target, freeze);

  @override
  SqlColumn get ID_NODE => this["id_node"];

  @override
  SqlColumn get ID_FEATURE_TYPE => this["id_feature_type"];

  @override
  SqlColumn get ID_FEATURE => this["id_feature"];

  @override
  SqlColumn get CALCULATED => this["calculated"];

  @override
  Set<String> get primaryKeyNames => _pkNames;

  @override
  Set<String> get columnNames => _columnNames;

  @override
  NODE_FEATURE_Table alias(String alias) => super.alias(alias);

  @override
  _NODE_FEATURE_TableImpl clone({bool freeze}) => super.clone(freeze: freeze);

  @override
  _NODE_FEATURE_TableImpl createClone(bool freeze) =>
      new _NODE_FEATURE_TableImpl.cloneFrom(this, freeze);

  @override
  SqlTable createTableAlias(String alias) =>
      new _NODE_FEATURE_TableImpl.aliased(alias, this);

}

abstract class NODE_TYPE_Table implements SqlTable {

  SqlColumn get ID_NODE_TYPE;

  SqlColumn get L_DESCRIPTION_IT;

  SqlColumn get L_DESCRIPTION_EN;

  SqlColumn get L_DESCRIPTION_DE;

  SqlColumn get L_DESCRIPTION_FR;

  SqlColumn get L_DESCRIPTION_ES;

  SqlColumn get L_DESCRIPTION_PT;

  SqlColumn get L_DESCRIPTION_RU;

  SqlColumn get L_DESCRIPTION_ZH;

  NODE_TYPE_Table alias(String alias);

  NODE_TYPE_Table clone({bool freeze});

}

class _NODE_TYPE_TableImpl extends SqlTableImpl implements NODE_TYPE_Table {
  static final Set<String> _pkNames = new Set.from(["id_node_type"]);
  static final Set<String> _columnNames = new Set.from(["id_node_type", "l_description_it", "l_description_en", "l_description_de", "l_description_fr", "l_description_es", "l_description_pt", "l_description_ru", "l_description_zh"]);

  _NODE_TYPE_TableImpl(SqlSchema schema) : super("node_type", schema);

  _NODE_TYPE_TableImpl.aliased(String alias, _NODE_TYPE_TableImpl target)
      : super.aliased(alias, target);

  _NODE_TYPE_TableImpl.cloneFrom(_NODE_TYPE_TableImpl target, bool freeze)
      : super.cloneFrom(target, freeze);

  @override
  SqlColumn get ID_NODE_TYPE => this["id_node_type"];

  @override
  SqlColumn get L_DESCRIPTION_IT => this["l_description_it"];

  @override
  SqlColumn get L_DESCRIPTION_EN => this["l_description_en"];

  @override
  SqlColumn get L_DESCRIPTION_DE => this["l_description_de"];

  @override
  SqlColumn get L_DESCRIPTION_FR => this["l_description_fr"];

  @override
  SqlColumn get L_DESCRIPTION_ES => this["l_description_es"];

  @override
  SqlColumn get L_DESCRIPTION_PT => this["l_description_pt"];

  @override
  SqlColumn get L_DESCRIPTION_RU => this["l_description_ru"];

  @override
  SqlColumn get L_DESCRIPTION_ZH => this["l_description_zh"];

  @override
  Set<String> get primaryKeyNames => _pkNames;

  @override
  Set<String> get columnNames => _columnNames;

  @override
  NODE_TYPE_Table alias(String alias) => super.alias(alias);

  @override
  _NODE_TYPE_TableImpl clone({bool freeze}) => super.clone(freeze: freeze);

  @override
  _NODE_TYPE_TableImpl createClone(bool freeze) =>
      new _NODE_TYPE_TableImpl.cloneFrom(this, freeze);

  @override
  SqlTable createTableAlias(String alias) =>
      new _NODE_TYPE_TableImpl.aliased(alias, this);

}

abstract class NODE_URL_Table implements SqlTable {

  SqlColumn get ID_NODE;

  SqlColumn get ID_URL;

  SqlColumn get SORTING;

  SqlColumn get PROPAGATE_TO_CHILDREN;

  NODE_URL_Table alias(String alias);

  NODE_URL_Table clone({bool freeze});

}

class _NODE_URL_TableImpl extends SqlTableImpl implements NODE_URL_Table {
  static final Set<String> _pkNames = new Set.from(["id_node", "id_url"]);
  static final Set<String> _columnNames = new Set.from(["id_node", "id_url", "sorting", "propagate_to_children"]);

  _NODE_URL_TableImpl(SqlSchema schema) : super("node_url", schema);

  _NODE_URL_TableImpl.aliased(String alias, _NODE_URL_TableImpl target)
      : super.aliased(alias, target);

  _NODE_URL_TableImpl.cloneFrom(_NODE_URL_TableImpl target, bool freeze)
      : super.cloneFrom(target, freeze);

  @override
  SqlColumn get ID_NODE => this["id_node"];

  @override
  SqlColumn get ID_URL => this["id_url"];

  @override
  SqlColumn get SORTING => this["sorting"];

  @override
  SqlColumn get PROPAGATE_TO_CHILDREN => this["propagate_to_children"];

  @override
  Set<String> get primaryKeyNames => _pkNames;

  @override
  Set<String> get columnNames => _columnNames;

  @override
  NODE_URL_Table alias(String alias) => super.alias(alias);

  @override
  _NODE_URL_TableImpl clone({bool freeze}) => super.clone(freeze: freeze);

  @override
  _NODE_URL_TableImpl createClone(bool freeze) =>
      new _NODE_URL_TableImpl.cloneFrom(this, freeze);

  @override
  SqlTable createTableAlias(String alias) =>
      new _NODE_URL_TableImpl.aliased(alias, this);

}

abstract class PACKAGE_Table implements SqlTable {

  SqlColumn get ID_PACKAGE;

  SqlColumn get DEFAUL_QUANTITY_ON_ITEM_INSERT;

  SqlColumn get DEFAUL_SORTING_ON_ITEM_INSERT;

  SqlColumn get L_NAME_IT;

  SqlColumn get L_NAME_EN;

  SqlColumn get L_NAME_DE;

  SqlColumn get L_NAME_FR;

  SqlColumn get L_NAME_ES;

  SqlColumn get L_NAME_PT;

  SqlColumn get L_NAME_RU;

  SqlColumn get L_NAME_ZH;

  SqlColumn get EXTERNAL_ID_REF;

  PACKAGE_Table alias(String alias);

  PACKAGE_Table clone({bool freeze});

}

class _PACKAGE_TableImpl extends SqlTableImpl implements PACKAGE_Table {
  static final Set<String> _pkNames = new Set.from(["id_package"]);
  static final Set<String> _columnNames = new Set.from(["id_package", "defaul_quantity_on_item_insert", "defaul_sorting_on_item_insert", "l_name_it", "l_name_en", "l_name_de", "l_name_fr", "l_name_es", "l_name_pt", "l_name_ru", "l_name_zh", "external_id_ref"]);

  _PACKAGE_TableImpl(SqlSchema schema) : super("package", schema);

  _PACKAGE_TableImpl.aliased(String alias, _PACKAGE_TableImpl target)
      : super.aliased(alias, target);

  _PACKAGE_TableImpl.cloneFrom(_PACKAGE_TableImpl target, bool freeze)
      : super.cloneFrom(target, freeze);

  @override
  SqlColumn get ID_PACKAGE => this["id_package"];

  @override
  SqlColumn get DEFAUL_QUANTITY_ON_ITEM_INSERT => this["defaul_quantity_on_item_insert"];

  @override
  SqlColumn get DEFAUL_SORTING_ON_ITEM_INSERT => this["defaul_sorting_on_item_insert"];

  @override
  SqlColumn get L_NAME_IT => this["l_name_it"];

  @override
  SqlColumn get L_NAME_EN => this["l_name_en"];

  @override
  SqlColumn get L_NAME_DE => this["l_name_de"];

  @override
  SqlColumn get L_NAME_FR => this["l_name_fr"];

  @override
  SqlColumn get L_NAME_ES => this["l_name_es"];

  @override
  SqlColumn get L_NAME_PT => this["l_name_pt"];

  @override
  SqlColumn get L_NAME_RU => this["l_name_ru"];

  @override
  SqlColumn get L_NAME_ZH => this["l_name_zh"];

  @override
  SqlColumn get EXTERNAL_ID_REF => this["external_id_ref"];

  @override
  Set<String> get primaryKeyNames => _pkNames;

  @override
  Set<String> get columnNames => _columnNames;

  @override
  PACKAGE_Table alias(String alias) => super.alias(alias);

  @override
  _PACKAGE_TableImpl clone({bool freeze}) => super.clone(freeze: freeze);

  @override
  _PACKAGE_TableImpl createClone(bool freeze) =>
      new _PACKAGE_TableImpl.cloneFrom(this, freeze);

  @override
  SqlTable createTableAlias(String alias) =>
      new _PACKAGE_TableImpl.aliased(alias, this);

}

abstract class PRICE_LIST_Table implements SqlTable {

  SqlColumn get ID_PRICE_LIST;

  SqlColumn get CURRENCY_ISO_CODE;

  SqlColumn get L_NAME_IT;

  SqlColumn get L_NAME_EN;

  SqlColumn get L_NAME_DE;

  SqlColumn get L_NAME_FR;

  SqlColumn get L_NAME_ES;

  SqlColumn get L_NAME_PT;

  SqlColumn get L_NAME_RU;

  SqlColumn get L_NAME_ZH;

  SqlColumn get EXTERNAL_ID_REF;

  PRICE_LIST_Table alias(String alias);

  PRICE_LIST_Table clone({bool freeze});

}

class _PRICE_LIST_TableImpl extends SqlTableImpl implements PRICE_LIST_Table {
  static final Set<String> _pkNames = new Set.from(["id_price_list"]);
  static final Set<String> _columnNames = new Set.from(["id_price_list", "currency_iso_code", "l_name_it", "l_name_en", "l_name_de", "l_name_fr", "l_name_es", "l_name_pt", "l_name_ru", "l_name_zh", "external_id_ref"]);

  _PRICE_LIST_TableImpl(SqlSchema schema) : super("price_list", schema);

  _PRICE_LIST_TableImpl.aliased(String alias, _PRICE_LIST_TableImpl target)
      : super.aliased(alias, target);

  _PRICE_LIST_TableImpl.cloneFrom(_PRICE_LIST_TableImpl target, bool freeze)
      : super.cloneFrom(target, freeze);

  @override
  SqlColumn get ID_PRICE_LIST => this["id_price_list"];

  @override
  SqlColumn get CURRENCY_ISO_CODE => this["currency_iso_code"];

  @override
  SqlColumn get L_NAME_IT => this["l_name_it"];

  @override
  SqlColumn get L_NAME_EN => this["l_name_en"];

  @override
  SqlColumn get L_NAME_DE => this["l_name_de"];

  @override
  SqlColumn get L_NAME_FR => this["l_name_fr"];

  @override
  SqlColumn get L_NAME_ES => this["l_name_es"];

  @override
  SqlColumn get L_NAME_PT => this["l_name_pt"];

  @override
  SqlColumn get L_NAME_RU => this["l_name_ru"];

  @override
  SqlColumn get L_NAME_ZH => this["l_name_zh"];

  @override
  SqlColumn get EXTERNAL_ID_REF => this["external_id_ref"];

  @override
  Set<String> get primaryKeyNames => _pkNames;

  @override
  Set<String> get columnNames => _columnNames;

  @override
  PRICE_LIST_Table alias(String alias) => super.alias(alias);

  @override
  _PRICE_LIST_TableImpl clone({bool freeze}) => super.clone(freeze: freeze);

  @override
  _PRICE_LIST_TableImpl createClone(bool freeze) =>
      new _PRICE_LIST_TableImpl.cloneFrom(this, freeze);

  @override
  SqlTable createTableAlias(String alias) =>
      new _PRICE_LIST_TableImpl.aliased(alias, this);

}

abstract class PROFILE_CATALOG_Table implements SqlTable {

  SqlColumn get ID_PROFILE;

  SqlColumn get ID_CATALOG;

  PROFILE_CATALOG_Table alias(String alias);

  PROFILE_CATALOG_Table clone({bool freeze});

}

class _PROFILE_CATALOG_TableImpl extends SqlTableImpl implements PROFILE_CATALOG_Table {
  static final Set<String> _pkNames = new Set.from(["id_profile", "id_catalog"]);
  static final Set<String> _columnNames = new Set.from(["id_profile", "id_catalog"]);

  _PROFILE_CATALOG_TableImpl(SqlSchema schema) : super("profile_catalog", schema);

  _PROFILE_CATALOG_TableImpl.aliased(String alias, _PROFILE_CATALOG_TableImpl target)
      : super.aliased(alias, target);

  _PROFILE_CATALOG_TableImpl.cloneFrom(_PROFILE_CATALOG_TableImpl target, bool freeze)
      : super.cloneFrom(target, freeze);

  @override
  SqlColumn get ID_PROFILE => this["id_profile"];

  @override
  SqlColumn get ID_CATALOG => this["id_catalog"];

  @override
  Set<String> get primaryKeyNames => _pkNames;

  @override
  Set<String> get columnNames => _columnNames;

  @override
  PROFILE_CATALOG_Table alias(String alias) => super.alias(alias);

  @override
  _PROFILE_CATALOG_TableImpl clone({bool freeze}) => super.clone(freeze: freeze);

  @override
  _PROFILE_CATALOG_TableImpl createClone(bool freeze) =>
      new _PROFILE_CATALOG_TableImpl.cloneFrom(this, freeze);

  @override
  SqlTable createTableAlias(String alias) =>
      new _PROFILE_CATALOG_TableImpl.aliased(alias, this);

}

abstract class URL_Table implements SqlTable {

  SqlColumn get ID_URL;

  SqlColumn get PATH;

  SqlColumn get TYPE;

  SqlColumn get HAS_THUMBNAIL;

  SqlColumn get HAS_PREVIEW;

  SqlColumn get L_ASSET_IT;

  SqlColumn get L_ASSET_EN;

  SqlColumn get L_ASSET_DE;

  SqlColumn get L_ASSET_FR;

  SqlColumn get L_ASSET_ES;

  SqlColumn get L_ASSET_PT;

  SqlColumn get L_ASSET_RU;

  SqlColumn get L_ASSET_ZH;

  SqlColumn get L_NAME_IT;

  SqlColumn get L_NAME_EN;

  SqlColumn get L_NAME_DE;

  SqlColumn get L_NAME_FR;

  SqlColumn get L_NAME_ES;

  SqlColumn get L_NAME_PT;

  SqlColumn get L_NAME_RU;

  SqlColumn get L_NAME_ZH;

  SqlColumn get EXTERNAL_ID_REF;

  URL_Table alias(String alias);

  URL_Table clone({bool freeze});

}

class _URL_TableImpl extends SqlTableImpl implements URL_Table {
  static final Set<String> _pkNames = new Set.from(["id_url"]);
  static final Set<String> _columnNames = new Set.from(["id_url", "path", "type", "has_thumbnail", "has_preview", "l_asset_it", "l_asset_en", "l_asset_de", "l_asset_fr", "l_asset_es", "l_asset_pt", "l_asset_ru", "l_asset_zh", "l_name_it", "l_name_en", "l_name_de", "l_name_fr", "l_name_es", "l_name_pt", "l_name_ru", "l_name_zh", "external_id_ref"]);

  _URL_TableImpl(SqlSchema schema) : super("url", schema);

  _URL_TableImpl.aliased(String alias, _URL_TableImpl target)
      : super.aliased(alias, target);

  _URL_TableImpl.cloneFrom(_URL_TableImpl target, bool freeze)
      : super.cloneFrom(target, freeze);

  @override
  SqlColumn get ID_URL => this["id_url"];

  @override
  SqlColumn get PATH => this["path"];

  @override
  SqlColumn get TYPE => this["type"];

  @override
  SqlColumn get HAS_THUMBNAIL => this["has_thumbnail"];

  @override
  SqlColumn get HAS_PREVIEW => this["has_preview"];

  @override
  SqlColumn get L_ASSET_IT => this["l_asset_it"];

  @override
  SqlColumn get L_ASSET_EN => this["l_asset_en"];

  @override
  SqlColumn get L_ASSET_DE => this["l_asset_de"];

  @override
  SqlColumn get L_ASSET_FR => this["l_asset_fr"];

  @override
  SqlColumn get L_ASSET_ES => this["l_asset_es"];

  @override
  SqlColumn get L_ASSET_PT => this["l_asset_pt"];

  @override
  SqlColumn get L_ASSET_RU => this["l_asset_ru"];

  @override
  SqlColumn get L_ASSET_ZH => this["l_asset_zh"];

  @override
  SqlColumn get L_NAME_IT => this["l_name_it"];

  @override
  SqlColumn get L_NAME_EN => this["l_name_en"];

  @override
  SqlColumn get L_NAME_DE => this["l_name_de"];

  @override
  SqlColumn get L_NAME_FR => this["l_name_fr"];

  @override
  SqlColumn get L_NAME_ES => this["l_name_es"];

  @override
  SqlColumn get L_NAME_PT => this["l_name_pt"];

  @override
  SqlColumn get L_NAME_RU => this["l_name_ru"];

  @override
  SqlColumn get L_NAME_ZH => this["l_name_zh"];

  @override
  SqlColumn get EXTERNAL_ID_REF => this["external_id_ref"];

  @override
  Set<String> get primaryKeyNames => _pkNames;

  @override
  Set<String> get columnNames => _columnNames;

  @override
  URL_Table alias(String alias) => super.alias(alias);

  @override
  _URL_TableImpl clone({bool freeze}) => super.clone(freeze: freeze);

  @override
  _URL_TableImpl createClone(bool freeze) =>
      new _URL_TableImpl.cloneFrom(this, freeze);

  @override
  SqlTable createTableAlias(String alias) =>
      new _URL_TableImpl.aliased(alias, this);

}

abstract class V_CLASSIFICATION_Table implements SqlTable {

  SqlColumn get ID_NODE;

  SqlColumn get ID_NODE_TYPE;

  SqlColumn get ID_PARENT_NODE;

  SqlColumn get ID_BRAND;

  SqlColumn get C_ID_PARENT_CLASSIFICATION;

  SqlColumn get C_ID_PARENT_CLASSIFICATION1;

  SqlColumn get C_ID_PARENT_CLASSIFICATION2;

  SqlColumn get C_ID_PARENT_CLASSIFICATION3;

  SqlColumn get C_ID_PARENT_CLASSIFICATION4;

  SqlColumn get XL_NAME_IT;

  SqlColumn get XL_NAME_EN;

  SqlColumn get L_DESCRIPTION_IT;

  SqlColumn get L_DESCRIPTION_EN;

  SqlColumn get X_NEW_START_DATE;

  SqlColumn get X_NEW_END_DATE;

  SqlColumn get X_ID_ITEM_URL;

  SqlColumn get X_ID_CLASSIFICATION_URL;

  SqlColumn get SORTING;

  SqlColumn get ACTIVE;

  SqlColumn get VIRTUAL;

  SqlColumn get H_XL_NAME_IT;

  SqlColumn get H_XL_NAME_EN;

  SqlColumn get H_X_NEW_START_DATE;

  SqlColumn get H_X_NEW_END_DATE;

  SqlColumn get H_X_ID_ITEM_URL;

  SqlColumn get H_X_ID_CLASSIFICATION_URL;

  SqlColumn get H_XL_NAME_DE;

  SqlColumn get H_XL_NAME_FR;

  SqlColumn get H_XL_NAME_ES;

  SqlColumn get H_XL_NAME_PT;

  SqlColumn get H_XL_NAME_RU;

  SqlColumn get H_XL_NAME_ZH;

  SqlColumn get L_DESCRIPTION_DE;

  SqlColumn get L_DESCRIPTION_FR;

  SqlColumn get L_DESCRIPTION_ES;

  SqlColumn get L_DESCRIPTION_PT;

  SqlColumn get L_DESCRIPTION_RU;

  SqlColumn get L_DESCRIPTION_ZH;

  SqlColumn get XL_NAME_DE;

  SqlColumn get XL_NAME_FR;

  SqlColumn get XL_NAME_ES;

  SqlColumn get XL_NAME_PT;

  SqlColumn get XL_NAME_RU;

  SqlColumn get XL_NAME_ZH;

  V_CLASSIFICATION_Table alias(String alias);

  V_CLASSIFICATION_Table clone({bool freeze});

}

class _V_CLASSIFICATION_TableImpl extends SqlTableImpl implements V_CLASSIFICATION_Table {
  static final Set<String> _pkNames = new Set.from([]);
  static final Set<String> _columnNames = new Set.from(["id_node", "id_node_type", "id_parent_node", "id_brand", "c_id_parent_classification", "c_id_parent_classification1", "c_id_parent_classification2", "c_id_parent_classification3", "c_id_parent_classification4", "xl_name_it", "xl_name_en", "l_description_it", "l_description_en", "x_new_start_date", "x_new_end_date", "x_id_item_url", "x_id_classification_url", "sorting", "active", "virtual", "h_xl_name_it", "h_xl_name_en", "h_x_new_start_date", "h_x_new_end_date", "h_x_id_item_url", "h_x_id_classification_url", "h_xl_name_de", "h_xl_name_fr", "h_xl_name_es", "h_xl_name_pt", "h_xl_name_ru", "h_xl_name_zh", "l_description_de", "l_description_fr", "l_description_es", "l_description_pt", "l_description_ru", "l_description_zh", "xl_name_de", "xl_name_fr", "xl_name_es", "xl_name_pt", "xl_name_ru", "xl_name_zh"]);

  _V_CLASSIFICATION_TableImpl(SqlSchema schema) : super("v_classification", schema);

  _V_CLASSIFICATION_TableImpl.aliased(String alias, _V_CLASSIFICATION_TableImpl target)
      : super.aliased(alias, target);

  _V_CLASSIFICATION_TableImpl.cloneFrom(_V_CLASSIFICATION_TableImpl target, bool freeze)
      : super.cloneFrom(target, freeze);

  @override
  SqlColumn get ID_NODE => this["id_node"];

  @override
  SqlColumn get ID_NODE_TYPE => this["id_node_type"];

  @override
  SqlColumn get ID_PARENT_NODE => this["id_parent_node"];

  @override
  SqlColumn get ID_BRAND => this["id_brand"];

  @override
  SqlColumn get C_ID_PARENT_CLASSIFICATION => this["c_id_parent_classification"];

  @override
  SqlColumn get C_ID_PARENT_CLASSIFICATION1 => this["c_id_parent_classification1"];

  @override
  SqlColumn get C_ID_PARENT_CLASSIFICATION2 => this["c_id_parent_classification2"];

  @override
  SqlColumn get C_ID_PARENT_CLASSIFICATION3 => this["c_id_parent_classification3"];

  @override
  SqlColumn get C_ID_PARENT_CLASSIFICATION4 => this["c_id_parent_classification4"];

  @override
  SqlColumn get XL_NAME_IT => this["xl_name_it"];

  @override
  SqlColumn get XL_NAME_EN => this["xl_name_en"];

  @override
  SqlColumn get L_DESCRIPTION_IT => this["l_description_it"];

  @override
  SqlColumn get L_DESCRIPTION_EN => this["l_description_en"];

  @override
  SqlColumn get X_NEW_START_DATE => this["x_new_start_date"];

  @override
  SqlColumn get X_NEW_END_DATE => this["x_new_end_date"];

  @override
  SqlColumn get X_ID_ITEM_URL => this["x_id_item_url"];

  @override
  SqlColumn get X_ID_CLASSIFICATION_URL => this["x_id_classification_url"];

  @override
  SqlColumn get SORTING => this["sorting"];

  @override
  SqlColumn get ACTIVE => this["active"];

  @override
  SqlColumn get VIRTUAL => this["virtual"];

  @override
  SqlColumn get H_XL_NAME_IT => this["h_xl_name_it"];

  @override
  SqlColumn get H_XL_NAME_EN => this["h_xl_name_en"];

  @override
  SqlColumn get H_X_NEW_START_DATE => this["h_x_new_start_date"];

  @override
  SqlColumn get H_X_NEW_END_DATE => this["h_x_new_end_date"];

  @override
  SqlColumn get H_X_ID_ITEM_URL => this["h_x_id_item_url"];

  @override
  SqlColumn get H_X_ID_CLASSIFICATION_URL => this["h_x_id_classification_url"];

  @override
  SqlColumn get H_XL_NAME_DE => this["h_xl_name_de"];

  @override
  SqlColumn get H_XL_NAME_FR => this["h_xl_name_fr"];

  @override
  SqlColumn get H_XL_NAME_ES => this["h_xl_name_es"];

  @override
  SqlColumn get H_XL_NAME_PT => this["h_xl_name_pt"];

  @override
  SqlColumn get H_XL_NAME_RU => this["h_xl_name_ru"];

  @override
  SqlColumn get H_XL_NAME_ZH => this["h_xl_name_zh"];

  @override
  SqlColumn get L_DESCRIPTION_DE => this["l_description_de"];

  @override
  SqlColumn get L_DESCRIPTION_FR => this["l_description_fr"];

  @override
  SqlColumn get L_DESCRIPTION_ES => this["l_description_es"];

  @override
  SqlColumn get L_DESCRIPTION_PT => this["l_description_pt"];

  @override
  SqlColumn get L_DESCRIPTION_RU => this["l_description_ru"];

  @override
  SqlColumn get L_DESCRIPTION_ZH => this["l_description_zh"];

  @override
  SqlColumn get XL_NAME_DE => this["xl_name_de"];

  @override
  SqlColumn get XL_NAME_FR => this["xl_name_fr"];

  @override
  SqlColumn get XL_NAME_ES => this["xl_name_es"];

  @override
  SqlColumn get XL_NAME_PT => this["xl_name_pt"];

  @override
  SqlColumn get XL_NAME_RU => this["xl_name_ru"];

  @override
  SqlColumn get XL_NAME_ZH => this["xl_name_zh"];

  @override
  Set<String> get primaryKeyNames => _pkNames;

  @override
  Set<String> get columnNames => _columnNames;

  @override
  V_CLASSIFICATION_Table alias(String alias) => super.alias(alias);

  @override
  _V_CLASSIFICATION_TableImpl clone({bool freeze}) => super.clone(freeze: freeze);

  @override
  _V_CLASSIFICATION_TableImpl createClone(bool freeze) =>
      new _V_CLASSIFICATION_TableImpl.cloneFrom(this, freeze);

  @override
  SqlTable createTableAlias(String alias) =>
      new _V_CLASSIFICATION_TableImpl.aliased(alias, this);

}

abstract class V_ITEM_Table implements SqlTable {

  SqlColumn get ID_NODE;

  SqlColumn get ID_NODE_TYPE;

  SqlColumn get ID_PARENT_NODE;

  SqlColumn get ID_BRAND;

  SqlColumn get C_ID_PARENT_CLASSIFICATION;

  SqlColumn get C_ID_PARENT_CLASSIFICATION1;

  SqlColumn get C_ID_PARENT_CLASSIFICATION2;

  SqlColumn get C_ID_PARENT_CLASSIFICATION3;

  SqlColumn get C_ID_PARENT_CLASSIFICATION4;

  SqlColumn get XL_NAME_IT;

  SqlColumn get XL_NAME_EN;

  SqlColumn get L_DESCRIPTION_IT;

  SqlColumn get L_DESCRIPTION_EN;

  SqlColumn get X_NEW_START_DATE;

  SqlColumn get X_NEW_END_DATE;

  SqlColumn get X_ID_ITEM_URL;

  SqlColumn get X_ID_CLASSIFICATION_URL;

  SqlColumn get SORTING;

  SqlColumn get ACTIVE;

  SqlColumn get VIRTUAL;

  SqlColumn get H_XL_NAME_IT;

  SqlColumn get H_XL_NAME_EN;

  SqlColumn get H_X_NEW_START_DATE;

  SqlColumn get H_X_NEW_END_DATE;

  SqlColumn get H_X_ID_ITEM_URL;

  SqlColumn get H_X_ID_CLASSIFICATION_URL;

  SqlColumn get H_XL_NAME_DE;

  SqlColumn get H_XL_NAME_FR;

  SqlColumn get H_XL_NAME_ES;

  SqlColumn get H_XL_NAME_PT;

  SqlColumn get H_XL_NAME_RU;

  SqlColumn get H_XL_NAME_ZH;

  SqlColumn get L_DESCRIPTION_DE;

  SqlColumn get L_DESCRIPTION_FR;

  SqlColumn get L_DESCRIPTION_ES;

  SqlColumn get L_DESCRIPTION_PT;

  SqlColumn get L_DESCRIPTION_RU;

  SqlColumn get L_DESCRIPTION_ZH;

  SqlColumn get XL_NAME_DE;

  SqlColumn get XL_NAME_FR;

  SqlColumn get XL_NAME_ES;

  SqlColumn get XL_NAME_PT;

  SqlColumn get XL_NAME_RU;

  SqlColumn get XL_NAME_ZH;

  V_ITEM_Table alias(String alias);

  V_ITEM_Table clone({bool freeze});

}

class _V_ITEM_TableImpl extends SqlTableImpl implements V_ITEM_Table {
  static final Set<String> _pkNames = new Set.from([]);
  static final Set<String> _columnNames = new Set.from(["id_node", "id_node_type", "id_parent_node", "id_brand", "c_id_parent_classification", "c_id_parent_classification1", "c_id_parent_classification2", "c_id_parent_classification3", "c_id_parent_classification4", "xl_name_it", "xl_name_en", "l_description_it", "l_description_en", "x_new_start_date", "x_new_end_date", "x_id_item_url", "x_id_classification_url", "sorting", "active", "virtual", "h_xl_name_it", "h_xl_name_en", "h_x_new_start_date", "h_x_new_end_date", "h_x_id_item_url", "h_x_id_classification_url", "h_xl_name_de", "h_xl_name_fr", "h_xl_name_es", "h_xl_name_pt", "h_xl_name_ru", "h_xl_name_zh", "l_description_de", "l_description_fr", "l_description_es", "l_description_pt", "l_description_ru", "l_description_zh", "xl_name_de", "xl_name_fr", "xl_name_es", "xl_name_pt", "xl_name_ru", "xl_name_zh"]);

  _V_ITEM_TableImpl(SqlSchema schema) : super("v_item", schema);

  _V_ITEM_TableImpl.aliased(String alias, _V_ITEM_TableImpl target)
      : super.aliased(alias, target);

  _V_ITEM_TableImpl.cloneFrom(_V_ITEM_TableImpl target, bool freeze)
      : super.cloneFrom(target, freeze);

  @override
  SqlColumn get ID_NODE => this["id_node"];

  @override
  SqlColumn get ID_NODE_TYPE => this["id_node_type"];

  @override
  SqlColumn get ID_PARENT_NODE => this["id_parent_node"];

  @override
  SqlColumn get ID_BRAND => this["id_brand"];

  @override
  SqlColumn get C_ID_PARENT_CLASSIFICATION => this["c_id_parent_classification"];

  @override
  SqlColumn get C_ID_PARENT_CLASSIFICATION1 => this["c_id_parent_classification1"];

  @override
  SqlColumn get C_ID_PARENT_CLASSIFICATION2 => this["c_id_parent_classification2"];

  @override
  SqlColumn get C_ID_PARENT_CLASSIFICATION3 => this["c_id_parent_classification3"];

  @override
  SqlColumn get C_ID_PARENT_CLASSIFICATION4 => this["c_id_parent_classification4"];

  @override
  SqlColumn get XL_NAME_IT => this["xl_name_it"];

  @override
  SqlColumn get XL_NAME_EN => this["xl_name_en"];

  @override
  SqlColumn get L_DESCRIPTION_IT => this["l_description_it"];

  @override
  SqlColumn get L_DESCRIPTION_EN => this["l_description_en"];

  @override
  SqlColumn get X_NEW_START_DATE => this["x_new_start_date"];

  @override
  SqlColumn get X_NEW_END_DATE => this["x_new_end_date"];

  @override
  SqlColumn get X_ID_ITEM_URL => this["x_id_item_url"];

  @override
  SqlColumn get X_ID_CLASSIFICATION_URL => this["x_id_classification_url"];

  @override
  SqlColumn get SORTING => this["sorting"];

  @override
  SqlColumn get ACTIVE => this["active"];

  @override
  SqlColumn get VIRTUAL => this["virtual"];

  @override
  SqlColumn get H_XL_NAME_IT => this["h_xl_name_it"];

  @override
  SqlColumn get H_XL_NAME_EN => this["h_xl_name_en"];

  @override
  SqlColumn get H_X_NEW_START_DATE => this["h_x_new_start_date"];

  @override
  SqlColumn get H_X_NEW_END_DATE => this["h_x_new_end_date"];

  @override
  SqlColumn get H_X_ID_ITEM_URL => this["h_x_id_item_url"];

  @override
  SqlColumn get H_X_ID_CLASSIFICATION_URL => this["h_x_id_classification_url"];

  @override
  SqlColumn get H_XL_NAME_DE => this["h_xl_name_de"];

  @override
  SqlColumn get H_XL_NAME_FR => this["h_xl_name_fr"];

  @override
  SqlColumn get H_XL_NAME_ES => this["h_xl_name_es"];

  @override
  SqlColumn get H_XL_NAME_PT => this["h_xl_name_pt"];

  @override
  SqlColumn get H_XL_NAME_RU => this["h_xl_name_ru"];

  @override
  SqlColumn get H_XL_NAME_ZH => this["h_xl_name_zh"];

  @override
  SqlColumn get L_DESCRIPTION_DE => this["l_description_de"];

  @override
  SqlColumn get L_DESCRIPTION_FR => this["l_description_fr"];

  @override
  SqlColumn get L_DESCRIPTION_ES => this["l_description_es"];

  @override
  SqlColumn get L_DESCRIPTION_PT => this["l_description_pt"];

  @override
  SqlColumn get L_DESCRIPTION_RU => this["l_description_ru"];

  @override
  SqlColumn get L_DESCRIPTION_ZH => this["l_description_zh"];

  @override
  SqlColumn get XL_NAME_DE => this["xl_name_de"];

  @override
  SqlColumn get XL_NAME_FR => this["xl_name_fr"];

  @override
  SqlColumn get XL_NAME_ES => this["xl_name_es"];

  @override
  SqlColumn get XL_NAME_PT => this["xl_name_pt"];

  @override
  SqlColumn get XL_NAME_RU => this["xl_name_ru"];

  @override
  SqlColumn get XL_NAME_ZH => this["xl_name_zh"];

  @override
  Set<String> get primaryKeyNames => _pkNames;

  @override
  Set<String> get columnNames => _columnNames;

  @override
  V_ITEM_Table alias(String alias) => super.alias(alias);

  @override
  _V_ITEM_TableImpl clone({bool freeze}) => super.clone(freeze: freeze);

  @override
  _V_ITEM_TableImpl createClone(bool freeze) =>
      new _V_ITEM_TableImpl.cloneFrom(this, freeze);

  @override
  SqlTable createTableAlias(String alias) =>
      new _V_ITEM_TableImpl.aliased(alias, this);

}

