//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse20025 {
  /// Returns a new [InlineResponse20025] instance.
  InlineResponse20025({
    this.original,
    this.singular,
  });

  String original;

  String singular;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse20025 &&
     other.original == original &&
     other.singular == singular;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (original == null ? 0 : original.hashCode) +
    (singular == null ? 0 : singular.hashCode);

  @override
  String toString() => 'InlineResponse20025[original=$original, singular=$singular]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (original != null) {
      json[r'original'] = original;
    }
    if (singular != null) {
      json[r'singular'] = singular;
    }
    return json;
  }

  /// Returns a new [InlineResponse20025] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse20025 fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse20025(
        original: mapValueOfType<String>(json, r'original'),
        singular: mapValueOfType<String>(json, r'singular'),
      );
    }
    return null;
  }

  static List<InlineResponse20025> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse20025.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse20025>[];

  static Map<String, InlineResponse20025> mapFromJson(dynamic json) {
    final map = <String, InlineResponse20025>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse20025.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse20025-objects as value to a dart map
  static Map<String, List<InlineResponse20025>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse20025>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse20025.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

