//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse20018InterestingnessSubscores {
  /// Returns a new [InlineResponse20018InterestingnessSubscores] instance.
  InlineResponse20018InterestingnessSubscores({
    this.titleRatingScore = const [],
    this.quoteScore = const [],
    this.lengthScore = const [],
    this.linkScore = const [],
    this.googleHitsScore = const [],
  });

  List<int> titleRatingScore;

  List<int> quoteScore;

  List<int> lengthScore;

  List<int> linkScore;

  List<int> googleHitsScore;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse20018InterestingnessSubscores &&
     other.titleRatingScore == titleRatingScore &&
     other.quoteScore == quoteScore &&
     other.lengthScore == lengthScore &&
     other.linkScore == linkScore &&
     other.googleHitsScore == googleHitsScore;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (titleRatingScore == null ? 0 : titleRatingScore.hashCode) +
    (quoteScore == null ? 0 : quoteScore.hashCode) +
    (lengthScore == null ? 0 : lengthScore.hashCode) +
    (linkScore == null ? 0 : linkScore.hashCode) +
    (googleHitsScore == null ? 0 : googleHitsScore.hashCode);

  @override
  String toString() => 'InlineResponse20018InterestingnessSubscores[titleRatingScore=$titleRatingScore, quoteScore=$quoteScore, lengthScore=$lengthScore, linkScore=$linkScore, googleHitsScore=$googleHitsScore]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (titleRatingScore != null) {
      json[r'title_rating_score'] = titleRatingScore;
    }
    if (quoteScore != null) {
      json[r'quote_score'] = quoteScore;
    }
    if (lengthScore != null) {
      json[r'length_score'] = lengthScore;
    }
    if (linkScore != null) {
      json[r'link_score'] = linkScore;
    }
    if (googleHitsScore != null) {
      json[r'google_hits_score'] = googleHitsScore;
    }
    return json;
  }

  /// Returns a new [InlineResponse20018InterestingnessSubscores] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse20018InterestingnessSubscores fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse20018InterestingnessSubscores(
        titleRatingScore: json[r'title_rating_score'] is List
          ? (json[r'title_rating_score'] as List).cast<int>()
          : null,
        quoteScore: json[r'quote_score'] is List
          ? (json[r'quote_score'] as List).cast<int>()
          : null,
        lengthScore: json[r'length_score'] is List
          ? (json[r'length_score'] as List).cast<int>()
          : null,
        linkScore: json[r'link_score'] is List
          ? (json[r'link_score'] as List).cast<int>()
          : null,
        googleHitsScore: json[r'google_hits_score'] is List
          ? (json[r'google_hits_score'] as List).cast<int>()
          : null,
      );
    }
    return null;
  }

  static List<InlineResponse20018InterestingnessSubscores> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse20018InterestingnessSubscores.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse20018InterestingnessSubscores>[];

  static Map<String, InlineResponse20018InterestingnessSubscores> mapFromJson(dynamic json) {
    final map = <String, InlineResponse20018InterestingnessSubscores>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse20018InterestingnessSubscores.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse20018InterestingnessSubscores-objects as value to a dart map
  static Map<String, List<InlineResponse20018InterestingnessSubscores>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse20018InterestingnessSubscores>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse20018InterestingnessSubscores.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

