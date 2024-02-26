//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse20018 {
  /// Returns a new [InlineResponse20018] instance.
  InlineResponse20018({
    this.document,
    this.sentences = const [],
  });

  InlineResponse20018Document document;

  List<InlineResponse20018Sentences> sentences;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse20018 &&
     other.document == document &&
     other.sentences == sentences;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (document == null ? 0 : document.hashCode) +
    (sentences == null ? 0 : sentences.hashCode);

  @override
  String toString() => 'InlineResponse20018[document=$document, sentences=$sentences]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (document != null) {
      json[r'document'] = document;
    }
    if (sentences != null) {
      json[r'sentences'] = sentences;
    }
    return json;
  }

  /// Returns a new [InlineResponse20018] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse20018 fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse20018(
        document: InlineResponse20018Document.fromJson(json[r'document']),
        sentences: InlineResponse20018Sentences.listFromJson(json[r'sentences']),
      );
    }
    return null;
  }

  static List<InlineResponse20018> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse20018.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse20018>[];

  static Map<String, InlineResponse20018> mapFromJson(dynamic json) {
    final map = <String, InlineResponse20018>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse20018.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse20018-objects as value to a dart map
  static Map<String, List<InlineResponse20018>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse20018>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse20018.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

