//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse20022 {
  /// Returns a new [InlineResponse20022] instance.
  InlineResponse20022({
    this.synonyms = const [],
  });

  List<String> synonyms;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse20022 &&
     other.synonyms == synonyms;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (synonyms == null ? 0 : synonyms.hashCode);

  @override
  String toString() => 'InlineResponse20022[synonyms=$synonyms]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (synonyms != null) {
      json[r'synonyms'] = synonyms;
    }
    return json;
  }

  /// Returns a new [InlineResponse20022] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse20022 fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse20022(
        synonyms: json[r'synonyms'] is List
          ? (json[r'synonyms'] as List).cast<String>()
          : null,
      );
    }
    return null;
  }

  static List<InlineResponse20022> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse20022.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse20022>[];

  static Map<String, InlineResponse20022> mapFromJson(dynamic json) {
    final map = <String, InlineResponse20022>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse20022.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse20022-objects as value to a dart map
  static Map<String, List<InlineResponse20022>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse20022>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse20022.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

