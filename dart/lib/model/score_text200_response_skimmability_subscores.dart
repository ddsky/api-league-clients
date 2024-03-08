//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ScoreText200ResponseSkimmabilitySubscores {
  /// Returns a new [ScoreText200ResponseSkimmabilitySubscores] instance.
  ScoreText200ResponseSkimmabilitySubscores({
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
  bool operator ==(Object other) => identical(this, other) || other is ScoreText200ResponseSkimmabilitySubscores &&
    _deepEquality.equals(other.bulletPointRatioScore, bulletPointRatioScore) &&
    _deepEquality.equals(other.imageScore, imageScore) &&
    _deepEquality.equals(other.highlightedWordRatioScore, highlightedWordRatioScore) &&
    _deepEquality.equals(other.videoScore, videoScore) &&
    _deepEquality.equals(other.paragraphScore, paragraphScore) &&
    _deepEquality.equals(other.paragraphHeadlineRatioScore, paragraphHeadlineRatioScore);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (bulletPointRatioScore.hashCode) +
    (imageScore.hashCode) +
    (highlightedWordRatioScore.hashCode) +
    (videoScore.hashCode) +
    (paragraphScore.hashCode) +
    (paragraphHeadlineRatioScore.hashCode);

  @override
  String toString() => 'ScoreText200ResponseSkimmabilitySubscores[bulletPointRatioScore=$bulletPointRatioScore, imageScore=$imageScore, highlightedWordRatioScore=$highlightedWordRatioScore, videoScore=$videoScore, paragraphScore=$paragraphScore, paragraphHeadlineRatioScore=$paragraphHeadlineRatioScore]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'bullet_point_ratio_score'] = this.bulletPointRatioScore;
      json[r'image_score'] = this.imageScore;
      json[r'highlighted_word_ratio_score'] = this.highlightedWordRatioScore;
      json[r'video_score'] = this.videoScore;
      json[r'paragraph_score'] = this.paragraphScore;
      json[r'paragraph_headline_ratio_score'] = this.paragraphHeadlineRatioScore;
    return json;
  }

  /// Returns a new [ScoreText200ResponseSkimmabilitySubscores] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScoreText200ResponseSkimmabilitySubscores? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ScoreText200ResponseSkimmabilitySubscores[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ScoreText200ResponseSkimmabilitySubscores[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ScoreText200ResponseSkimmabilitySubscores(
        bulletPointRatioScore: json[r'bullet_point_ratio_score'] is Iterable
            ? (json[r'bullet_point_ratio_score'] as Iterable).cast<int>().toList(growable: false)
            : const [],
        imageScore: json[r'image_score'] is Iterable
            ? (json[r'image_score'] as Iterable).cast<int>().toList(growable: false)
            : const [],
        highlightedWordRatioScore: json[r'highlighted_word_ratio_score'] is Iterable
            ? (json[r'highlighted_word_ratio_score'] as Iterable).cast<int>().toList(growable: false)
            : const [],
        videoScore: json[r'video_score'] is Iterable
            ? (json[r'video_score'] as Iterable).cast<int>().toList(growable: false)
            : const [],
        paragraphScore: json[r'paragraph_score'] is Iterable
            ? (json[r'paragraph_score'] as Iterable).cast<int>().toList(growable: false)
            : const [],
        paragraphHeadlineRatioScore: json[r'paragraph_headline_ratio_score'] is Iterable
            ? (json[r'paragraph_headline_ratio_score'] as Iterable).cast<int>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<ScoreText200ResponseSkimmabilitySubscores> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScoreText200ResponseSkimmabilitySubscores>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScoreText200ResponseSkimmabilitySubscores.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScoreText200ResponseSkimmabilitySubscores> mapFromJson(dynamic json) {
    final map = <String, ScoreText200ResponseSkimmabilitySubscores>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScoreText200ResponseSkimmabilitySubscores.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScoreText200ResponseSkimmabilitySubscores-objects as value to a dart map
  static Map<String, List<ScoreText200ResponseSkimmabilitySubscores>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ScoreText200ResponseSkimmabilitySubscores>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ScoreText200ResponseSkimmabilitySubscores.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

