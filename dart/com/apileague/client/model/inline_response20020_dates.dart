//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse20020Dates {
  /// Returns a new [InlineResponse20020Dates] instance.
  InlineResponse20020Dates({
    this.startPosition,
    this.date,
    this.normalizedDate,
    this.tag,
    this.endPosition,
  });

  int startPosition;

  String date;

  ModelNull normalizedDate;

  String tag;

  int endPosition;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse20020Dates &&
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
  String toString() => 'InlineResponse20020Dates[startPosition=$startPosition, date=$date, normalizedDate=$normalizedDate, tag=$tag, endPosition=$endPosition]';

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

  /// Returns a new [InlineResponse20020Dates] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse20020Dates fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse20020Dates(
        startPosition: mapValueOfType<int>(json, r'start_position'),
        date: mapValueOfType<String>(json, r'date'),
        normalizedDate: ModelNull.fromJson(json[r'normalized_date']),
        tag: mapValueOfType<String>(json, r'tag'),
        endPosition: mapValueOfType<int>(json, r'end_position'),
      );
    }
    return null;
  }

  static List<InlineResponse20020Dates> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse20020Dates.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse20020Dates>[];

  static Map<String, InlineResponse20020Dates> mapFromJson(dynamic json) {
    final map = <String, InlineResponse20020Dates>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse20020Dates.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse20020Dates-objects as value to a dart map
  static Map<String, List<InlineResponse20020Dates>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse20020Dates>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse20020Dates.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

