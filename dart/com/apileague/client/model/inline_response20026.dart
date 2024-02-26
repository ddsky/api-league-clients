//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse20026 {
  /// Returns a new [InlineResponse20026] instance.
  InlineResponse20026({
    this.original,
    this.plural,
  });

  String original;

  String plural;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse20026 &&
     other.original == original &&
     other.plural == plural;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (original == null ? 0 : original.hashCode) +
    (plural == null ? 0 : plural.hashCode);

  @override
  String toString() => 'InlineResponse20026[original=$original, plural=$plural]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (original != null) {
      json[r'original'] = original;
    }
    if (plural != null) {
      json[r'plural'] = plural;
    }
    return json;
  }

  /// Returns a new [InlineResponse20026] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse20026 fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse20026(
        original: mapValueOfType<String>(json, r'original'),
        plural: mapValueOfType<String>(json, r'plural'),
      );
    }
    return null;
  }

  static List<InlineResponse20026> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse20026.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse20026>[];

  static Map<String, InlineResponse20026> mapFromJson(dynamic json) {
    final map = <String, InlineResponse20026>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse20026.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse20026-objects as value to a dart map
  static Map<String, List<InlineResponse20026>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse20026>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse20026.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

