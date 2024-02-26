//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse20018SkimmabilitySubscores {
  /// Returns a new [InlineResponse20018SkimmabilitySubscores] instance.
  InlineResponse20018SkimmabilitySubscores({
    this.bulletPointRatioScore = const [],
    this.imageScore = const [],
    this.highlightedWordRatioScore = const [],
    this.videoScore = const [],
    this.paragraphScore = const [],
    this.paragraphHeadlineRatioScore = const [],
  });

  List<int> bulletPointRatioScore;

  List<int> imageScore;

  List<int> highlightedWordRatioScore;

  List<int> videoScore;

  List<int> paragraphScore;

  List<int> paragraphHeadlineRatioScore;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse20018SkimmabilitySubscores &&
     other.bulletPointRatioScore == bulletPointRatioScore &&
     other.imageScore == imageScore &&
     other.highlightedWordRatioScore == highlightedWordRatioScore &&
     other.videoScore == videoScore &&
     other.paragraphScore == paragraphScore &&
     other.paragraphHeadlineRatioScore == paragraphHeadlineRatioScore;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (bulletPointRatioScore == null ? 0 : bulletPointRatioScore.hashCode) +
    (imageScore == null ? 0 : imageScore.hashCode) +
    (highlightedWordRatioScore == null ? 0 : highlightedWordRatioScore.hashCode) +
    (videoScore == null ? 0 : videoScore.hashCode) +
    (paragraphScore == null ? 0 : paragraphScore.hashCode) +
    (paragraphHeadlineRatioScore == null ? 0 : paragraphHeadlineRatioScore.hashCode);

  @override
  String toString() => 'InlineResponse20018SkimmabilitySubscores[bulletPointRatioScore=$bulletPointRatioScore, imageScore=$imageScore, highlightedWordRatioScore=$highlightedWordRatioScore, videoScore=$videoScore, paragraphScore=$paragraphScore, paragraphHeadlineRatioScore=$paragraphHeadlineRatioScore]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (bulletPointRatioScore != null) {
      json[r'bullet_point_ratio_score'] = bulletPointRatioScore;
    }
    if (imageScore != null) {
      json[r'image_score'] = imageScore;
    }
    if (highlightedWordRatioScore != null) {
      json[r'highlighted_word_ratio_score'] = highlightedWordRatioScore;
    }
    if (videoScore != null) {
      json[r'video_score'] = videoScore;
    }
    if (paragraphScore != null) {
      json[r'paragraph_score'] = paragraphScore;
    }
    if (paragraphHeadlineRatioScore != null) {
      json[r'paragraph_headline_ratio_score'] = paragraphHeadlineRatioScore;
    }
    return json;
  }

  /// Returns a new [InlineResponse20018SkimmabilitySubscores] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse20018SkimmabilitySubscores fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse20018SkimmabilitySubscores(
        bulletPointRatioScore: json[r'bullet_point_ratio_score'] is List
          ? (json[r'bullet_point_ratio_score'] as List).cast<int>()
          : null,
        imageScore: json[r'image_score'] is List
          ? (json[r'image_score'] as List).cast<int>()
          : null,
        highlightedWordRatioScore: json[r'highlighted_word_ratio_score'] is List
          ? (json[r'highlighted_word_ratio_score'] as List).cast<int>()
          : null,
        videoScore: json[r'video_score'] is List
          ? (json[r'video_score'] as List).cast<int>()
          : null,
        paragraphScore: json[r'paragraph_score'] is List
          ? (json[r'paragraph_score'] as List).cast<int>()
          : null,
        paragraphHeadlineRatioScore: json[r'paragraph_headline_ratio_score'] is List
          ? (json[r'paragraph_headline_ratio_score'] as List).cast<int>()
          : null,
      );
    }
    return null;
  }

  static List<InlineResponse20018SkimmabilitySubscores> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse20018SkimmabilitySubscores.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse20018SkimmabilitySubscores>[];

  static Map<String, InlineResponse20018SkimmabilitySubscores> mapFromJson(dynamic json) {
    final map = <String, InlineResponse20018SkimmabilitySubscores>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse20018SkimmabilitySubscores.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse20018SkimmabilitySubscores-objects as value to a dart map
  static Map<String, List<InlineResponse20018SkimmabilitySubscores>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse20018SkimmabilitySubscores>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse20018SkimmabilitySubscores.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

