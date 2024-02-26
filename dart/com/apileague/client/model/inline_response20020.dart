//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse20020 {
  /// Returns a new [InlineResponse20020] instance.
  InlineResponse20020({
    this.readability,
  });

  InlineResponse20019Readability readability;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse20020 &&
     other.readability == readability;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (readability == null ? 0 : readability.hashCode);

  @override
  String toString() => 'InlineResponse20020[readability=$readability]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (readability != null) {
      json[r'readability'] = readability;
    }
    return json;
  }

  /// Returns a new [InlineResponse20020] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse20020 fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse20020(
        readability: InlineResponse20019Readability.fromJson(json[r'readability']),
      );
    }
    return null;
  }

  static List<InlineResponse20020> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse20020.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse20020>[];

  static Map<String, InlineResponse20020> mapFromJson(dynamic json) {
    final map = <String, InlineResponse20020>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse20020.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse20020-objects as value to a dart map
  static Map<String, List<InlineResponse20020>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse20020>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse20020.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

