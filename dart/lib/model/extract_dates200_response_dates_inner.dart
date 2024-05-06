//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExtractDates200ResponseDatesInner {
  /// Returns a new [ExtractDates200ResponseDatesInner] instance.
  ExtractDates200ResponseDatesInner({
    this.startPosition,
    this.date,
    this.normalizedDate,
    this.tag,
    this.endPosition,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? startPosition;

  String? date;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? normalizedDate;

  String? tag;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? endPosition;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExtractDates200ResponseDatesInner &&
    other.startPosition == startPosition &&
    other.date == date &&
    other.normalizedDate == normalizedDate &&
    other.tag == tag &&
    other.endPosition == endPosition;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (startPosition == null ? 0 : startPosition!.hashCode) +
    (date == null ? 0 : date!.hashCode) +
    (normalizedDate == null ? 0 : normalizedDate!.hashCode) +
    (tag == null ? 0 : tag!.hashCode) +
    (endPosition == null ? 0 : endPosition!.hashCode);

  @override
  String toString() => 'ExtractDates200ResponseDatesInner[startPosition=$startPosition, date=$date, normalizedDate=$normalizedDate, tag=$tag, endPosition=$endPosition]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.startPosition != null) {
      json[r'start_position'] = this.startPosition;
    } else {
      json[r'start_position'] = null;
    }
    if (this.date != null) {
      json[r'date'] = this.date;
    } else {
      json[r'date'] = null;
    }
    if (this.normalizedDate != null) {
      json[r'normalized_date'] = this.normalizedDate;
    } else {
      json[r'normalized_date'] = null;
    }
    if (this.tag != null) {
      json[r'tag'] = this.tag;
    } else {
      json[r'tag'] = null;
    }
    if (this.endPosition != null) {
      json[r'end_position'] = this.endPosition;
    } else {
      json[r'end_position'] = null;
    }
    return json;
  }

  /// Returns a new [ExtractDates200ResponseDatesInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExtractDates200ResponseDatesInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExtractDates200ResponseDatesInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExtractDates200ResponseDatesInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExtractDates200ResponseDatesInner(
        startPosition: mapValueOfType<int>(json, r'start_position'),
        date: mapValueOfType<String>(json, r'date'),
        normalizedDate: num.parse('${json[r'normalized_date']}'),
        tag: mapValueOfType<String>(json, r'tag'),
        endPosition: mapValueOfType<int>(json, r'end_position'),
      );
    }
    return null;
  }

  static List<ExtractDates200ResponseDatesInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExtractDates200ResponseDatesInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExtractDates200ResponseDatesInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExtractDates200ResponseDatesInner> mapFromJson(dynamic json) {
    final map = <String, ExtractDates200ResponseDatesInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExtractDates200ResponseDatesInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExtractDates200ResponseDatesInner-objects as value to a dart map
  static Map<String, List<ExtractDates200ResponseDatesInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExtractDates200ResponseDatesInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExtractDates200ResponseDatesInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

