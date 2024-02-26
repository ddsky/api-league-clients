//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse20019StyleSubscores {
  /// Returns a new [InlineResponse20019StyleSubscores] instance.
  InlineResponse20019StyleSubscores({
    this.abbreviationScore = const [],
    this.styleScore = const [],
    this.spellingScore = const [],
  });

  List<int> abbreviationScore;

  List<int> styleScore;

  List<int> spellingScore;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse20019StyleSubscores &&
     other.abbreviationScore == abbreviationScore &&
     other.styleScore == styleScore &&
     other.spellingScore == spellingScore;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (abbreviationScore == null ? 0 : abbreviationScore.hashCode) +
    (styleScore == null ? 0 : styleScore.hashCode) +
    (spellingScore == null ? 0 : spellingScore.hashCode);

  @override
  String toString() => 'InlineResponse20019StyleSubscores[abbreviationScore=$abbreviationScore, styleScore=$styleScore, spellingScore=$spellingScore]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (abbreviationScore != null) {
      json[r'abbreviation_score'] = abbreviationScore;
    }
    if (styleScore != null) {
      json[r'style_score'] = styleScore;
    }
    if (spellingScore != null) {
      json[r'spelling_score'] = spellingScore;
    }
    return json;
  }

  /// Returns a new [InlineResponse20019StyleSubscores] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse20019StyleSubscores fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse20019StyleSubscores(
        abbreviationScore: json[r'abbreviation_score'] is List
          ? (json[r'abbreviation_score'] as List).cast<int>()
          : null,
        styleScore: json[r'style_score'] is List
          ? (json[r'style_score'] as List).cast<int>()
          : null,
        spellingScore: json[r'spelling_score'] is List
          ? (json[r'spelling_score'] as List).cast<int>()
          : null,
      );
    }
    return null;
  }

  static List<InlineResponse20019StyleSubscores> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse20019StyleSubscores.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse20019StyleSubscores>[];

  static Map<String, InlineResponse20019StyleSubscores> mapFromJson(dynamic json) {
    final map = <String, InlineResponse20019StyleSubscores>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse20019StyleSubscores.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse20019StyleSubscores-objects as value to a dart map
  static Map<String, List<InlineResponse20019StyleSubscores>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse20019StyleSubscores>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse20019StyleSubscores.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

