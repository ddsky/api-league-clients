//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse20023 {
  /// Returns a new [InlineResponse20023] instance.
  InlineResponse20023({
    this.taggedText,
  });

  String taggedText;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse20023 &&
     other.taggedText == taggedText;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (taggedText == null ? 0 : taggedText.hashCode);

  @override
  String toString() => 'InlineResponse20023[taggedText=$taggedText]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (taggedText != null) {
      json[r'tagged_text'] = taggedText;
    }
    return json;
  }

  /// Returns a new [InlineResponse20023] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse20023 fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse20023(
        taggedText: mapValueOfType<String>(json, r'tagged_text'),
      );
    }
    return null;
  }

  static List<InlineResponse20023> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse20023.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse20023>[];

  static Map<String, InlineResponse20023> mapFromJson(dynamic json) {
    final map = <String, InlineResponse20023>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse20023.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse20023-objects as value to a dart map
  static Map<String, List<InlineResponse20023>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse20023>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse20023.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

