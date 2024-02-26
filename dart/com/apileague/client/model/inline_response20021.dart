//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse20021 {
  /// Returns a new [InlineResponse20021] instance.
  InlineResponse20021({
    this.dates = const [],
  });

  List<InlineResponse20021Dates> dates;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse20021 &&
     other.dates == dates;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (dates == null ? 0 : dates.hashCode);

  @override
  String toString() => 'InlineResponse20021[dates=$dates]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (dates != null) {
      json[r'dates'] = dates;
    }
    return json;
  }

  /// Returns a new [InlineResponse20021] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse20021 fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse20021(
        dates: InlineResponse20021Dates.listFromJson(json[r'dates']),
      );
    }
    return null;
  }

  static List<InlineResponse20021> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse20021.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse20021>[];

  static Map<String, InlineResponse20021> mapFromJson(dynamic json) {
    final map = <String, InlineResponse20021>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse20021.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse20021-objects as value to a dart map
  static Map<String, List<InlineResponse20021>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse20021>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse20021.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

