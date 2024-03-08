//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ScoreText200ResponseInterestingnessSubscores {
  /// Returns a new [ScoreText200ResponseInterestingnessSubscores] instance.
  ScoreText200ResponseInterestingnessSubscores({
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
  bool operator ==(Object other) => identical(this, other) || other is ScoreText200ResponseInterestingnessSubscores &&
    _deepEquality.equals(other.titleRatingScore, titleRatingScore) &&
    _deepEquality.equals(other.quoteScore, quoteScore) &&
    _deepEquality.equals(other.lengthScore, lengthScore) &&
    _deepEquality.equals(other.linkScore, linkScore) &&
    _deepEquality.equals(other.googleHitsScore, googleHitsScore);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (titleRatingScore.hashCode) +
    (quoteScore.hashCode) +
    (lengthScore.hashCode) +
    (linkScore.hashCode) +
    (googleHitsScore.hashCode);

  @override
  String toString() => 'ScoreText200ResponseInterestingnessSubscores[titleRatingScore=$titleRatingScore, quoteScore=$quoteScore, lengthScore=$lengthScore, linkScore=$linkScore, googleHitsScore=$googleHitsScore]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'title_rating_score'] = this.titleRatingScore;
      json[r'quote_score'] = this.quoteScore;
      json[r'length_score'] = this.lengthScore;
      json[r'link_score'] = this.linkScore;
      json[r'google_hits_score'] = this.googleHitsScore;
    return json;
  }

  /// Returns a new [ScoreText200ResponseInterestingnessSubscores] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScoreText200ResponseInterestingnessSubscores? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ScoreText200ResponseInterestingnessSubscores[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ScoreText200ResponseInterestingnessSubscores[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ScoreText200ResponseInterestingnessSubscores(
        titleRatingScore: json[r'title_rating_score'] is Iterable
            ? (json[r'title_rating_score'] as Iterable).cast<int>().toList(growable: false)
            : const [],
        quoteScore: json[r'quote_score'] is Iterable
            ? (json[r'quote_score'] as Iterable).cast<int>().toList(growable: false)
            : const [],
        lengthScore: json[r'length_score'] is Iterable
            ? (json[r'length_score'] as Iterable).cast<int>().toList(growable: false)
            : const [],
        linkScore: json[r'link_score'] is Iterable
            ? (json[r'link_score'] as Iterable).cast<int>().toList(growable: false)
            : const [],
        googleHitsScore: json[r'google_hits_score'] is Iterable
            ? (json[r'google_hits_score'] as Iterable).cast<int>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<ScoreText200ResponseInterestingnessSubscores> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScoreText200ResponseInterestingnessSubscores>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScoreText200ResponseInterestingnessSubscores.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScoreText200ResponseInterestingnessSubscores> mapFromJson(dynamic json) {
    final map = <String, ScoreText200ResponseInterestingnessSubscores>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScoreText200ResponseInterestingnessSubscores.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScoreText200ResponseInterestingnessSubscores-objects as value to a dart map
  static Map<String, List<ScoreText200ResponseInterestingnessSubscores>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ScoreText200ResponseInterestingnessSubscores>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ScoreText200ResponseInterestingnessSubscores.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

