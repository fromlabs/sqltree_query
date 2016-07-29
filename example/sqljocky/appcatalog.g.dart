

import "package:sqltree_schema/sqltree_schema_builder.dart";


final AppCatalog_Schema _AppCatalog_DEFAULT = createAppCatalog_Schema("");

APP_ACTIVATION_Table get APP_ACTIVATION => _AppCatalog_DEFAULT.APP_ACTIVATION;

CURRENCY_Table get CURRENCY => _AppCatalog_DEFAULT.CURRENCY;

DOMAIN_Table get DOMAIN => _AppCatalog_DEFAULT.DOMAIN;

FUNCTIONALITY_Table get FUNCTIONALITY => _AppCatalog_DEFAULT.FUNCTIONALITY;

FUNCTIONALITY_GROUP_Table get FUNCTIONALITY_GROUP => _AppCatalog_DEFAULT.FUNCTIONALITY_GROUP;

PERMISSION_Table get PERMISSION => _AppCatalog_DEFAULT.PERMISSION;

PROFILE_Table get PROFILE => _AppCatalog_DEFAULT.PROFILE;

PROFILE_PERMISSION_Table get PROFILE_PERMISSION => _AppCatalog_DEFAULT.PROFILE_PERMISSION;

AppCatalog_Schema createAppCatalog_Schema(String name) =>
    registerSharedSchema(new _AppCatalog_SchemaImpl(name));

abstract class AppCatalog_Schema implements SqlSchema {

  APP_ACTIVATION_Table get APP_ACTIVATION;

  CURRENCY_Table get CURRENCY;

  DOMAIN_Table get DOMAIN;

  FUNCTIONALITY_Table get FUNCTIONALITY;

  FUNCTIONALITY_GROUP_Table get FUNCTIONALITY_GROUP;

  PERMISSION_Table get PERMISSION;

  PROFILE_Table get PROFILE;

  PROFILE_PERMISSION_Table get PROFILE_PERMISSION;

}

class _AppCatalog_SchemaImpl extends SqlSchemaImpl implements AppCatalog_Schema {
  _AppCatalog_SchemaImpl(String name) : super(name);

  _AppCatalog_SchemaImpl.cloneFrom(_AppCatalog_SchemaImpl target, bool freeze)
      : super.cloneFrom(target, freeze);

  @override
  APP_ACTIVATION_Table get APP_ACTIVATION => this["app_activation"];

  @override
  CURRENCY_Table get CURRENCY => this["currency"];

  @override
  DOMAIN_Table get DOMAIN => this["domain"];

  @override
  FUNCTIONALITY_Table get FUNCTIONALITY => this["functionality"];

  @override
  FUNCTIONALITY_GROUP_Table get FUNCTIONALITY_GROUP => this["functionality_group"];

  @override
  PERMISSION_Table get PERMISSION => this["permission"];

  @override
  PROFILE_Table get PROFILE => this["profile"];

  @override
  PROFILE_PERMISSION_Table get PROFILE_PERMISSION => this["profile_permission"];

  @override
  SqlTableImpl createTable(String name) {
    switch (name) {

      case "app_activation":
        return new _APP_ACTIVATION_TableImpl(this);

      case "currency":
        return new _CURRENCY_TableImpl(this);

      case "domain":
        return new _DOMAIN_TableImpl(this);

      case "functionality":
        return new _FUNCTIONALITY_TableImpl(this);

      case "functionality_group":
        return new _FUNCTIONALITY_GROUP_TableImpl(this);

      case "permission":
        return new _PERMISSION_TableImpl(this);

      case "profile":
        return new _PROFILE_TableImpl(this);

      case "profile_permission":
        return new _PROFILE_PERMISSION_TableImpl(this);

      default:
        throw new UnsupportedError("Table not exist $name");
    }
  }

  @override
  _AppCatalog_SchemaImpl clone({bool freeze}) => super.clone(freeze: freeze);

  @override
  _AppCatalog_SchemaImpl createClone(bool freeze) =>
      new _AppCatalog_SchemaImpl.cloneFrom(this, freeze);
}

abstract class APP_ACTIVATION_Table implements SqlTable {

  SqlColumn get ID_ACTIVATION;

  SqlColumn get ID_DOMAIN;

  SqlColumn get DEVICE_UUID;

  SqlColumn get USERNAME;

  SqlColumn get ERROR_STATUS;

  SqlColumn get DEVICE_SYNC_ID;

  SqlColumn get DEVICE_APPLICATION;

  SqlColumn get DEVICE_LAUNCHER;

  SqlColumn get DEVICE_INFO;

  SqlColumn get DEVICE_LAST_ACCESS_DATE;

  SqlColumn get DEBUG;

  SqlColumn get LOGS;

  SqlColumn get ERROR_LOGS;

  SqlColumn get PRERELEASE;

  SqlColumn get CREATION_DATE;

  SqlColumn get DEVICE_CATALOGS;

  SqlColumn get DEVICE_LAST_UPDATE_DATE;

  APP_ACTIVATION_Table alias(String alias);

  APP_ACTIVATION_Table clone({bool freeze});

}

class _APP_ACTIVATION_TableImpl extends SqlTableImpl implements APP_ACTIVATION_Table {
  static final Set<String> _pkNames = new Set.from(["id_activation"]);
  static final Set<String> _columnNames = new Set.from(["id_activation", "id_domain", "device_uuid", "username", "error_status", "device_sync_id", "device_application", "device_launcher", "device_info", "device_last_access_date", "debug", "logs", "error_logs", "prerelease", "creation_date", "device_catalogs", "device_last_update_date"]);

  _APP_ACTIVATION_TableImpl(SqlSchema schema) : super("app_activation", schema);

  _APP_ACTIVATION_TableImpl.aliased(String alias, _APP_ACTIVATION_TableImpl target)
      : super.aliased(alias, target);

  _APP_ACTIVATION_TableImpl.cloneFrom(_APP_ACTIVATION_TableImpl target, bool freeze)
      : super.cloneFrom(target, freeze);

  @override
  SqlColumn get ID_ACTIVATION => this["id_activation"];

  @override
  SqlColumn get ID_DOMAIN => this["id_domain"];

  @override
  SqlColumn get DEVICE_UUID => this["device_uuid"];

  @override
  SqlColumn get USERNAME => this["username"];

  @override
  SqlColumn get ERROR_STATUS => this["error_status"];

  @override
  SqlColumn get DEVICE_SYNC_ID => this["device_sync_id"];

  @override
  SqlColumn get DEVICE_APPLICATION => this["device_application"];

  @override
  SqlColumn get DEVICE_LAUNCHER => this["device_launcher"];

  @override
  SqlColumn get DEVICE_INFO => this["device_info"];

  @override
  SqlColumn get DEVICE_LAST_ACCESS_DATE => this["device_last_access_date"];

  @override
  SqlColumn get DEBUG => this["debug"];

  @override
  SqlColumn get LOGS => this["logs"];

  @override
  SqlColumn get ERROR_LOGS => this["error_logs"];

  @override
  SqlColumn get PRERELEASE => this["prerelease"];

  @override
  SqlColumn get CREATION_DATE => this["creation_date"];

  @override
  SqlColumn get DEVICE_CATALOGS => this["device_catalogs"];

  @override
  SqlColumn get DEVICE_LAST_UPDATE_DATE => this["device_last_update_date"];

  @override
  Set<String> get primaryKeyNames => _pkNames;

  @override
  Set<String> get columnNames => _columnNames;

  @override
  APP_ACTIVATION_Table alias(String alias) => super.alias(alias);

  @override
  _APP_ACTIVATION_TableImpl clone({bool freeze}) => super.clone(freeze: freeze);

  @override
  _APP_ACTIVATION_TableImpl createClone(bool freeze) =>
      new _APP_ACTIVATION_TableImpl.cloneFrom(this, freeze);

  @override
  SqlTable createTableAlias(String alias) =>
      new _APP_ACTIVATION_TableImpl.aliased(alias, this);

}

abstract class CURRENCY_Table implements SqlTable {

  SqlColumn get CURRENCY_ISO_CODE;

  SqlColumn get SYMBOL;

  SqlColumn get L_NAME_IT;

  SqlColumn get L_NAME_EN;

  SqlColumn get L_NAME_DE;

  SqlColumn get L_NAME_FR;

  SqlColumn get L_NAME_ES;

  SqlColumn get L_NAME_PT;

  SqlColumn get L_NAME_RU;

  SqlColumn get L_NAME_ZH;

  CURRENCY_Table alias(String alias);

  CURRENCY_Table clone({bool freeze});

}

class _CURRENCY_TableImpl extends SqlTableImpl implements CURRENCY_Table {
  static final Set<String> _pkNames = new Set.from(["currency_iso_code"]);
  static final Set<String> _columnNames = new Set.from(["currency_iso_code", "symbol", "l_name_it", "l_name_en", "l_name_de", "l_name_fr", "l_name_es", "l_name_pt", "l_name_ru", "l_name_zh"]);

  _CURRENCY_TableImpl(SqlSchema schema) : super("currency", schema);

  _CURRENCY_TableImpl.aliased(String alias, _CURRENCY_TableImpl target)
      : super.aliased(alias, target);

  _CURRENCY_TableImpl.cloneFrom(_CURRENCY_TableImpl target, bool freeze)
      : super.cloneFrom(target, freeze);

  @override
  SqlColumn get CURRENCY_ISO_CODE => this["currency_iso_code"];

  @override
  SqlColumn get SYMBOL => this["symbol"];

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
  CURRENCY_Table alias(String alias) => super.alias(alias);

  @override
  _CURRENCY_TableImpl clone({bool freeze}) => super.clone(freeze: freeze);

  @override
  _CURRENCY_TableImpl createClone(bool freeze) =>
      new _CURRENCY_TableImpl.cloneFrom(this, freeze);

  @override
  SqlTable createTableAlias(String alias) =>
      new _CURRENCY_TableImpl.aliased(alias, this);

}

abstract class DOMAIN_Table implements SqlTable {

  SqlColumn get ID_DOMAIN;

  SqlColumn get NAME;

  SqlColumn get DB_SCHEMA;

  DOMAIN_Table alias(String alias);

  DOMAIN_Table clone({bool freeze});

}

class _DOMAIN_TableImpl extends SqlTableImpl implements DOMAIN_Table {
  static final Set<String> _pkNames = new Set.from(["id_domain"]);
  static final Set<String> _columnNames = new Set.from(["id_domain", "name", "db_schema"]);

  _DOMAIN_TableImpl(SqlSchema schema) : super("domain", schema);

  _DOMAIN_TableImpl.aliased(String alias, _DOMAIN_TableImpl target)
      : super.aliased(alias, target);

  _DOMAIN_TableImpl.cloneFrom(_DOMAIN_TableImpl target, bool freeze)
      : super.cloneFrom(target, freeze);

  @override
  SqlColumn get ID_DOMAIN => this["id_domain"];

  @override
  SqlColumn get NAME => this["name"];

  @override
  SqlColumn get DB_SCHEMA => this["db_schema"];

  @override
  Set<String> get primaryKeyNames => _pkNames;

  @override
  Set<String> get columnNames => _columnNames;

  @override
  DOMAIN_Table alias(String alias) => super.alias(alias);

  @override
  _DOMAIN_TableImpl clone({bool freeze}) => super.clone(freeze: freeze);

  @override
  _DOMAIN_TableImpl createClone(bool freeze) =>
      new _DOMAIN_TableImpl.cloneFrom(this, freeze);

  @override
  SqlTable createTableAlias(String alias) =>
      new _DOMAIN_TableImpl.aliased(alias, this);

}

abstract class FUNCTIONALITY_Table implements SqlTable {

  SqlColumn get ID_FUNCTIONALITY;

  SqlColumn get ID_FUNCTIONALITY_GROUP;

  SqlColumn get MENU;

  SqlColumn get ICON;

  SqlColumn get L_NAME_IT;

  SqlColumn get L_NAME_EN;

  SqlColumn get L_DESCRIPTION_IT;

  SqlColumn get L_DESCRIPTION_EN;

  SqlColumn get SORTING;

  SqlColumn get ACTIVE;

  SqlColumn get L_DESCRIPTION_DE;

  SqlColumn get L_DESCRIPTION_FR;

  SqlColumn get L_DESCRIPTION_ES;

  SqlColumn get L_DESCRIPTION_PT;

  SqlColumn get L_DESCRIPTION_RU;

  SqlColumn get L_DESCRIPTION_ZH;

  SqlColumn get L_NAME_DE;

  SqlColumn get L_NAME_FR;

  SqlColumn get L_NAME_ES;

  SqlColumn get L_NAME_PT;

  SqlColumn get L_NAME_RU;

  SqlColumn get L_NAME_ZH;

  FUNCTIONALITY_Table alias(String alias);

  FUNCTIONALITY_Table clone({bool freeze});

}

class _FUNCTIONALITY_TableImpl extends SqlTableImpl implements FUNCTIONALITY_Table {
  static final Set<String> _pkNames = new Set.from(["id_functionality"]);
  static final Set<String> _columnNames = new Set.from(["id_functionality", "id_functionality_group", "menu", "icon", "l_name_it", "l_name_en", "l_description_it", "l_description_en", "sorting", "active", "l_description_de", "l_description_fr", "l_description_es", "l_description_pt", "l_description_ru", "l_description_zh", "l_name_de", "l_name_fr", "l_name_es", "l_name_pt", "l_name_ru", "l_name_zh"]);

  _FUNCTIONALITY_TableImpl(SqlSchema schema) : super("functionality", schema);

  _FUNCTIONALITY_TableImpl.aliased(String alias, _FUNCTIONALITY_TableImpl target)
      : super.aliased(alias, target);

  _FUNCTIONALITY_TableImpl.cloneFrom(_FUNCTIONALITY_TableImpl target, bool freeze)
      : super.cloneFrom(target, freeze);

  @override
  SqlColumn get ID_FUNCTIONALITY => this["id_functionality"];

  @override
  SqlColumn get ID_FUNCTIONALITY_GROUP => this["id_functionality_group"];

  @override
  SqlColumn get MENU => this["menu"];

  @override
  SqlColumn get ICON => this["icon"];

  @override
  SqlColumn get L_NAME_IT => this["l_name_it"];

  @override
  SqlColumn get L_NAME_EN => this["l_name_en"];

  @override
  SqlColumn get L_DESCRIPTION_IT => this["l_description_it"];

  @override
  SqlColumn get L_DESCRIPTION_EN => this["l_description_en"];

  @override
  SqlColumn get SORTING => this["sorting"];

  @override
  SqlColumn get ACTIVE => this["active"];

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
  FUNCTIONALITY_Table alias(String alias) => super.alias(alias);

  @override
  _FUNCTIONALITY_TableImpl clone({bool freeze}) => super.clone(freeze: freeze);

  @override
  _FUNCTIONALITY_TableImpl createClone(bool freeze) =>
      new _FUNCTIONALITY_TableImpl.cloneFrom(this, freeze);

  @override
  SqlTable createTableAlias(String alias) =>
      new _FUNCTIONALITY_TableImpl.aliased(alias, this);

}

abstract class FUNCTIONALITY_GROUP_Table implements SqlTable {

  SqlColumn get ID_FUNCTIONALITY_GROUP;

  SqlColumn get L_NAME_IT;

  SqlColumn get L_NAME_EN;

  SqlColumn get SORTING;

  SqlColumn get ACTIVE;

  SqlColumn get L_NAME_DE;

  SqlColumn get L_NAME_FR;

  SqlColumn get L_NAME_ES;

  SqlColumn get L_NAME_PT;

  SqlColumn get L_NAME_RU;

  SqlColumn get L_NAME_ZH;

  FUNCTIONALITY_GROUP_Table alias(String alias);

  FUNCTIONALITY_GROUP_Table clone({bool freeze});

}

class _FUNCTIONALITY_GROUP_TableImpl extends SqlTableImpl implements FUNCTIONALITY_GROUP_Table {
  static final Set<String> _pkNames = new Set.from(["id_functionality_group"]);
  static final Set<String> _columnNames = new Set.from(["id_functionality_group", "l_name_it", "l_name_en", "sorting", "active", "l_name_de", "l_name_fr", "l_name_es", "l_name_pt", "l_name_ru", "l_name_zh"]);

  _FUNCTIONALITY_GROUP_TableImpl(SqlSchema schema) : super("functionality_group", schema);

  _FUNCTIONALITY_GROUP_TableImpl.aliased(String alias, _FUNCTIONALITY_GROUP_TableImpl target)
      : super.aliased(alias, target);

  _FUNCTIONALITY_GROUP_TableImpl.cloneFrom(_FUNCTIONALITY_GROUP_TableImpl target, bool freeze)
      : super.cloneFrom(target, freeze);

  @override
  SqlColumn get ID_FUNCTIONALITY_GROUP => this["id_functionality_group"];

  @override
  SqlColumn get L_NAME_IT => this["l_name_it"];

  @override
  SqlColumn get L_NAME_EN => this["l_name_en"];

  @override
  SqlColumn get SORTING => this["sorting"];

  @override
  SqlColumn get ACTIVE => this["active"];

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
  FUNCTIONALITY_GROUP_Table alias(String alias) => super.alias(alias);

  @override
  _FUNCTIONALITY_GROUP_TableImpl clone({bool freeze}) => super.clone(freeze: freeze);

  @override
  _FUNCTIONALITY_GROUP_TableImpl createClone(bool freeze) =>
      new _FUNCTIONALITY_GROUP_TableImpl.cloneFrom(this, freeze);

  @override
  SqlTable createTableAlias(String alias) =>
      new _FUNCTIONALITY_GROUP_TableImpl.aliased(alias, this);

}

abstract class PERMISSION_Table implements SqlTable {

  SqlColumn get ID_PERMISSION;

  SqlColumn get ID_PARENT_PERMISSION;

  SqlColumn get ACTIVE;

  PERMISSION_Table alias(String alias);

  PERMISSION_Table clone({bool freeze});

}

class _PERMISSION_TableImpl extends SqlTableImpl implements PERMISSION_Table {
  static final Set<String> _pkNames = new Set.from(["id_permission"]);
  static final Set<String> _columnNames = new Set.from(["id_permission", "id_parent_permission", "active"]);

  _PERMISSION_TableImpl(SqlSchema schema) : super("permission", schema);

  _PERMISSION_TableImpl.aliased(String alias, _PERMISSION_TableImpl target)
      : super.aliased(alias, target);

  _PERMISSION_TableImpl.cloneFrom(_PERMISSION_TableImpl target, bool freeze)
      : super.cloneFrom(target, freeze);

  @override
  SqlColumn get ID_PERMISSION => this["id_permission"];

  @override
  SqlColumn get ID_PARENT_PERMISSION => this["id_parent_permission"];

  @override
  SqlColumn get ACTIVE => this["active"];

  @override
  Set<String> get primaryKeyNames => _pkNames;

  @override
  Set<String> get columnNames => _columnNames;

  @override
  PERMISSION_Table alias(String alias) => super.alias(alias);

  @override
  _PERMISSION_TableImpl clone({bool freeze}) => super.clone(freeze: freeze);

  @override
  _PERMISSION_TableImpl createClone(bool freeze) =>
      new _PERMISSION_TableImpl.cloneFrom(this, freeze);

  @override
  SqlTable createTableAlias(String alias) =>
      new _PERMISSION_TableImpl.aliased(alias, this);

}

abstract class PROFILE_Table implements SqlTable {

  SqlColumn get ID_PROFILE;

  SqlColumn get ID_DOMAIN;

  SqlColumn get USERNAME;

  SqlColumn get PASSWORD;

  SqlColumn get FIRSTNAME;

  SqlColumn get LASTNAME;

  SqlColumn get EMAIL;

  SqlColumn get LOCALE;

  SqlColumn get ACTIVE;

  PROFILE_Table alias(String alias);

  PROFILE_Table clone({bool freeze});

}

class _PROFILE_TableImpl extends SqlTableImpl implements PROFILE_Table {
  static final Set<String> _pkNames = new Set.from(["id_profile", "id_domain"]);
  static final Set<String> _columnNames = new Set.from(["id_profile", "id_domain", "username", "password", "firstname", "lastname", "email", "locale", "active"]);

  _PROFILE_TableImpl(SqlSchema schema) : super("profile", schema);

  _PROFILE_TableImpl.aliased(String alias, _PROFILE_TableImpl target)
      : super.aliased(alias, target);

  _PROFILE_TableImpl.cloneFrom(_PROFILE_TableImpl target, bool freeze)
      : super.cloneFrom(target, freeze);

  @override
  SqlColumn get ID_PROFILE => this["id_profile"];

  @override
  SqlColumn get ID_DOMAIN => this["id_domain"];

  @override
  SqlColumn get USERNAME => this["username"];

  @override
  SqlColumn get PASSWORD => this["password"];

  @override
  SqlColumn get FIRSTNAME => this["firstname"];

  @override
  SqlColumn get LASTNAME => this["lastname"];

  @override
  SqlColumn get EMAIL => this["email"];

  @override
  SqlColumn get LOCALE => this["locale"];

  @override
  SqlColumn get ACTIVE => this["active"];

  @override
  Set<String> get primaryKeyNames => _pkNames;

  @override
  Set<String> get columnNames => _columnNames;

  @override
  PROFILE_Table alias(String alias) => super.alias(alias);

  @override
  _PROFILE_TableImpl clone({bool freeze}) => super.clone(freeze: freeze);

  @override
  _PROFILE_TableImpl createClone(bool freeze) =>
      new _PROFILE_TableImpl.cloneFrom(this, freeze);

  @override
  SqlTable createTableAlias(String alias) =>
      new _PROFILE_TableImpl.aliased(alias, this);

}

abstract class PROFILE_PERMISSION_Table implements SqlTable {

  SqlColumn get ID_DOMAIN;

  SqlColumn get ID_PROFILE;

  SqlColumn get ID_PERMISSION;

  PROFILE_PERMISSION_Table alias(String alias);

  PROFILE_PERMISSION_Table clone({bool freeze});

}

class _PROFILE_PERMISSION_TableImpl extends SqlTableImpl implements PROFILE_PERMISSION_Table {
  static final Set<String> _pkNames = new Set.from(["id_domain", "id_profile", "id_permission"]);
  static final Set<String> _columnNames = new Set.from(["id_domain", "id_profile", "id_permission"]);

  _PROFILE_PERMISSION_TableImpl(SqlSchema schema) : super("profile_permission", schema);

  _PROFILE_PERMISSION_TableImpl.aliased(String alias, _PROFILE_PERMISSION_TableImpl target)
      : super.aliased(alias, target);

  _PROFILE_PERMISSION_TableImpl.cloneFrom(_PROFILE_PERMISSION_TableImpl target, bool freeze)
      : super.cloneFrom(target, freeze);

  @override
  SqlColumn get ID_DOMAIN => this["id_domain"];

  @override
  SqlColumn get ID_PROFILE => this["id_profile"];

  @override
  SqlColumn get ID_PERMISSION => this["id_permission"];

  @override
  Set<String> get primaryKeyNames => _pkNames;

  @override
  Set<String> get columnNames => _columnNames;

  @override
  PROFILE_PERMISSION_Table alias(String alias) => super.alias(alias);

  @override
  _PROFILE_PERMISSION_TableImpl clone({bool freeze}) => super.clone(freeze: freeze);

  @override
  _PROFILE_PERMISSION_TableImpl createClone(bool freeze) =>
      new _PROFILE_PERMISSION_TableImpl.cloneFrom(this, freeze);

  @override
  SqlTable createTableAlias(String alias) =>
      new _PROFILE_PERMISSION_TableImpl.aliased(alias, this);

}

