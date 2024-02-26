//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse20027 {
  /// Returns a new [InlineResponse20027] instance.
  InlineResponse20027({
    this.entities = const [],
  });

  List<InlineResponse20027Entities> entities;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse20027 &&
     other.entities == entities;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (entities == null ? 0 : entities.hashCode);

  @override
  String toString() => 'InlineResponse20027[entities=$entities]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (entities != null) {
      json[r'entities'] = entities;
    }
    return json;
  }

  /// Returns a new [InlineResponse20027] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse20027 fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse20027(
        entities: InlineResponse20027Entities.listFromJson(json[r'entities']),
      );
    }
    return null;
  }

  static List<InlineResponse20027> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse20027.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse20027>[];

  static Map<String, InlineResponse20027> mapFromJson(dynamic json) {
    final map = <String, InlineResponse20027>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse20027.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse20027-objects as value to a dart map
  static Map<String, List<InlineResponse20027>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse20027>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse20027.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

