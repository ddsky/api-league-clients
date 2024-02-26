//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse20021Dates {
  /// Returns a new [InlineResponse20021Dates] instance.
  InlineResponse20021Dates({
    this.startPosition,
    this.date,
    this.normalizedDate,
    this.tag,
    this.endPosition,
  });

  int startPosition;

  String date;

  num normalizedDate;

  String tag;

  int endPosition;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse20021Dates &&
     other.startPosition == startPosition &&
     other.date == date &&
     other.normalizedDate == normalizedDate &&
     other.tag == tag &&
     other.endPosition == endPosition;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (startPosition == null ? 0 : startPosition.hashCode) +
    (date == null ? 0 : date.hashCode) +
    (normalizedDate == null ? 0 : normalizedDate.hashCode) +
    (tag == null ? 0 : tag.hashCode) +
    (endPosition == null ? 0 : endPosition.hashCode);

  @override
  String toString() => 'InlineResponse20021Dates[startPosition=$startPosition, date=$date, normalizedDate=$normalizedDate, tag=$tag, endPosition=$endPosition]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (startPosition != null) {
      json[r'start_position'] = startPosition;
    }
    if (date != null) {
      json[r'date'] = date;
    }
    if (normalizedDate != null) {
      json[r'normalized_date'] = normalizedDate;
    }
    if (tag != null) {
      json[r'tag'] = tag;
    }
    if (endPosition != null) {
      json[r'end_position'] = endPosition;
    }
    return json;
  }

  /// Returns a new [InlineResponse20021Dates] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse20021Dates fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse20021Dates(
        startPosition: mapValueOfType<int>(json, r'start_position'),
        date: mapValueOfType<String>(json, r'date'),
        normalizedDate: json[r'normalized_date'] == null
          ? null
          : num.parse(json[r'normalized_date'].toString()),
        tag: mapValueOfType<String>(json, r'tag'),
        endPosition: mapValueOfType<int>(json, r'end_position'),
      );
    }
    return null;
  }

  static List<InlineResponse20021Dates> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse20021Dates.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse20021Dates>[];

  static Map<String, InlineResponse20021Dates> mapFromJson(dynamic json) {
    final map = <String, InlineResponse20021Dates>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse20021Dates.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse20021Dates-objects as value to a dart map
  static Map<String, List<InlineResponse20021Dates>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse20021Dates>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse20021Dates.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

