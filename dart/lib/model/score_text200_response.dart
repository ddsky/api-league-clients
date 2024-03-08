//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ScoreText200Response {
  /// Returns a new [ScoreText200Response] instance.
  ScoreText200Response({
    this.numberOfWords,
    this.numberOfSentences,
    this.readability,
    this.skimmability,
    this.interestingness,
    this.style,
    this.totalScore,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? numberOfWords;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? numberOfSentences;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ScoreText200ResponseReadability? readability;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ScoreText200ResponseSkimmability? skimmability;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ScoreText200ResponseInterestingness? interestingness;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ScoreText200ResponseStyle? style;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? totalScore;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ScoreText200Response &&
    other.numberOfWords == numberOfWords &&
    other.numberOfSentences == numberOfSentences &&
    other.readability == readability &&
    other.skimmability == skimmability &&
    other.interestingness == interestingness &&
    other.style == style &&
    other.totalScore == totalScore;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (numberOfWords == null ? 0 : numberOfWords!.hashCode) +
    (numberOfSentences == null ? 0 : numberOfSentences!.hashCode) +
    (readability == null ? 0 : readability!.hashCode) +
    (skimmability == null ? 0 : skimmability!.hashCode) +
    (interestingness == null ? 0 : interestingness!.hashCode) +
    (style == null ? 0 : style!.hashCode) +
    (totalScore == null ? 0 : totalScore!.hashCode);

  @override
  String toString() => 'ScoreText200Response[numberOfWords=$numberOfWords, numberOfSentences=$numberOfSentences, readability=$readability, skimmability=$skimmability, interestingness=$interestingness, style=$style, totalScore=$totalScore]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.numberOfWords != null) {
      json[r'number_of_words'] = this.numberOfWords;
    } else {
      json[r'number_of_words'] = null;
    }
    if (this.numberOfSentences != null) {
      json[r'number_of_sentences'] = this.numberOfSentences;
    } else {
      json[r'number_of_sentences'] = null;
    }
    if (this.readability != null) {
      json[r'readability'] = this.readability;
    } else {
      json[r'readability'] = null;
    }
    if (this.skimmability != null) {
      json[r'skimmability'] = this.skimmability;
    } else {
      json[r'skimmability'] = null;
    }
    if (this.interestingness != null) {
      json[r'interestingness'] = this.interestingness;
    } else {
      json[r'interestingness'] = null;
    }
    if (this.style != null) {
      json[r'style'] = this.style;
    } else {
      json[r'style'] = null;
    }
    if (this.totalScore != null) {
      json[r'total_score'] = this.totalScore;
    } else {
      json[r'total_score'] = null;
    }
    return json;
  }

  /// Returns a new [ScoreText200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScoreText200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ScoreText200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ScoreText200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ScoreText200Response(
        numberOfWords: mapValueOfType<int>(json, r'number_of_words'),
        numberOfSentences: mapValueOfType<int>(json, r'number_of_sentences'),
        readability: ScoreText200ResponseReadability.fromJson(json[r'readability']),
        skimmability: ScoreText200ResponseSkimmability.fromJson(json[r'skimmability']),
        interestingness: ScoreText200ResponseInterestingness.fromJson(json[r'interestingness']),
        style: ScoreText200ResponseStyle.fromJson(json[r'style']),
        totalScore: num.parse('${json[r'total_score']}'),
      );
    }
    return null;
  }

  static List<ScoreText200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScoreText200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScoreText200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScoreText200Response> mapFromJson(dynamic json) {
    final map = <String, ScoreText200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScoreText200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScoreText200Response-objects as value to a dart map
  static Map<String, List<ScoreText200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ScoreText200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ScoreText200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

