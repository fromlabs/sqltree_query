// Copyright (c) 2016, Roberto Tassi. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import "dart:async";

import "query_connector.dart";

abstract class BaseQueryConnectorImpl implements QueryConnector {
  Future<List<List>> queryInternal(String statement, [List parameters]);

  @override
  Future<List<List>> query(String statement,
      {List<QueryParameter> parameters: const <QueryParameter>[],
      List<QueryValueType> resultColumnTypes: const <QueryValueType>[]}) async {
    var valueParameters = parameters
        .map((QueryParameter queryParameter) => prepareParameterValue(
            queryParameter.value,
            type: queryParameter.type))
        .toList();

    var data = await queryInternal(statement, valueParameters);

    return data.map((List rowData) {
      var row = [];
      for (var i = 0; i < rowData.length; i++) {
        row.add(prepareColumnValue(rowData[i], type: resultColumnTypes[i]));
      }
      return row;
    }).toList(growable: false);
  }

  prepareParameterValue(value, {QueryValueType type}) =>
      convertValue(value, type: type);

  prepareColumnValue(value, {QueryValueType type}) =>
      convertValue(value, type: type);

  convertValue(value, {QueryValueType type}) {
    if (type == null || value == null) {
      return value;
    } else if (type == QueryValueType.STRING) {
      if (value is String) {
        return value;
      } else if (value is DateTime) {
        checkUtcDateTime(value);

        return value.toIso8601String();
      } else {
        return value.toString();
      }
    } else if (type == QueryValueType.BOOL) {
      if (value is bool) {
        return value;
      } else if (value is num) {
        if (value == 1) {
          return true;
        } else if (value == 0) {
          return false;
        }
      }

      throw new ArgumentError("Invalid bool value $value");
    } else if (type == QueryValueType.DATETIME) {
      if (value is DateTime) {
        checkUtcDateTime(value);

        return value;
      } else if (value is String) {
        var dateTime = DateTime.parse(value);

        checkUtcDateTime(dateTime);

        return dateTime;
      }

      throw new ArgumentError("Invalid datetime value $value");
    } else if (type == QueryValueType.DATE) {
      if (value is DateTime) {
        checkUtcDateTime(value);

        return getDateTimeWithoutTime(value);
      } else if (value is String) {
        var dateTime = DateTime.parse(value.length > "0000-00-00".length
            ? value
            : "${value}T00:00:00.000Z");

        checkUtcDateTime(dateTime);

        return getDateTimeWithoutTime(dateTime);
      }

      throw new ArgumentError("Invalid date value $value");
    } else if (type == QueryValueType.TIME) {
      if (value is DateTime) {
        checkUtcDateTime(value);

        return getDateTimeWithoutDate(value);
      } else if (value is String) {
        var dateTime = DateTime.parse(value);

        checkUtcDateTime(dateTime);

        return getDateTimeWithoutDate(dateTime);
      }

      throw new ArgumentError("Invalid time value $value");
    } else if (type == QueryValueType.NUM) {
      if (value is num) {
        return value;
      } else if (value is String) {
        return num.parse(value);
      }

      throw new ArgumentError("Invalid num value $value");
    } else {
      throw new UnsupportedError("Invalid value type $type");
    }
  }

  QueryValueType getValueType(value) {
    if (value is String) {
      return QueryValueType.STRING;
    } else if (value is bool) {
      return QueryValueType.BOOL;
    } else if (value is DateTime) {
      return QueryValueType.DATETIME;
    } else if (value is num) {
      return QueryValueType.NUM;
    }

    return null;
  }

  DateTime getDateTimeWithoutTime(DateTime dateTime) =>
      dateTime.subtract(new Duration(
          hours: dateTime.hour,
          minutes: dateTime.minute,
          seconds: dateTime.second,
          milliseconds: dateTime.millisecond,
          microseconds: dateTime.microsecond));

  DateTime getDateTimeWithoutDate(DateTime dateTime) => new DateTime.utc(
      0,
      1,
      1,
      dateTime.hour,
      dateTime.minute,
      dateTime.second,
      dateTime.millisecond,
      dateTime.microsecond);

  void checkUtcDateTime(DateTime dateTime) {
    if (!dateTime.isUtc) {
      throw new ArgumentError("Value is not in UTC $dateTime");
    }
  }
}
