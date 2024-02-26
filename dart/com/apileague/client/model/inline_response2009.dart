//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse2009 {
  /// Returns a new [InlineResponse2009] instance.
  InlineResponse2009({
    this.trivia,
  });

  String trivia;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse2009 &&
     other.trivia == trivia;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (trivia == null ? 0 : trivia.hashCode);

  @override
  String toString() => 'InlineResponse2009[trivia=$trivia]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (trivia != null) {
      json[r'trivia'] = trivia;
    }
    return json;
  }

  /// Returns a new [InlineResponse2009] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse2009 fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse2009(
        trivia: mapValueOfType<String>(json, r'trivia'),
      );
    }
    return null;
  }

  static List<InlineResponse2009> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse2009.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse2009>[];

  static Map<String, InlineResponse2009> mapFromJson(dynamic json) {
    final map = <String, InlineResponse2009>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse2009.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse2009-objects as value to a dart map
  static Map<String, List<InlineResponse2009>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse2009>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse2009.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

