//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse20017 {
  /// Returns a new [InlineResponse20017] instance.
  InlineResponse20017({
    this.language,
    this.confidence,
  });

  String language;

  num confidence;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse20017 &&
     other.language == language &&
     other.confidence == confidence;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (language == null ? 0 : language.hashCode) +
    (confidence == null ? 0 : confidence.hashCode);

  @override
  String toString() => 'InlineResponse20017[language=$language, confidence=$confidence]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (language != null) {
      json[r'language'] = language;
    }
    if (confidence != null) {
      json[r'confidence'] = confidence;
    }
    return json;
  }

  /// Returns a new [InlineResponse20017] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse20017 fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse20017(
        language: mapValueOfType<String>(json, r'language'),
        confidence: json[r'confidence'] == null
          ? null
          : num.parse(json[r'confidence'].toString()),
      );
    }
    return null;
  }

  static List<InlineResponse20017> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse20017.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse20017>[];

  static Map<String, InlineResponse20017> mapFromJson(dynamic json) {
    final map = <String, InlineResponse20017>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse20017.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse20017-objects as value to a dart map
  static Map<String, List<InlineResponse20017>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse20017>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse20017.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

