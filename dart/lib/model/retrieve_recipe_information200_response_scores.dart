//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RetrieveRecipeInformation200ResponseScores {
  /// Returns a new [RetrieveRecipeInformation200ResponseScores] instance.
  RetrieveRecipeInformation200ResponseScores({
    this.metaScore,
    this.weightWatcherSmartPoints,
    this.healthScore,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? metaScore;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? weightWatcherSmartPoints;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? healthScore;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RetrieveRecipeInformation200ResponseScores &&
    other.metaScore == metaScore &&
    other.weightWatcherSmartPoints == weightWatcherSmartPoints &&
    other.healthScore == healthScore;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (metaScore == null ? 0 : metaScore!.hashCode) +
    (weightWatcherSmartPoints == null ? 0 : weightWatcherSmartPoints!.hashCode) +
    (healthScore == null ? 0 : healthScore!.hashCode);

  @override
  String toString() => 'RetrieveRecipeInformation200ResponseScores[metaScore=$metaScore, weightWatcherSmartPoints=$weightWatcherSmartPoints, healthScore=$healthScore]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.metaScore != null) {
      json[r'meta_score'] = this.metaScore;
    } else {
      json[r'meta_score'] = null;
    }
    if (this.weightWatcherSmartPoints != null) {
      json[r'weight_watcher_smart_points'] = this.weightWatcherSmartPoints;
    } else {
      json[r'weight_watcher_smart_points'] = null;
    }
    if (this.healthScore != null) {
      json[r'health_score'] = this.healthScore;
    } else {
      json[r'health_score'] = null;
    }
    return json;
  }

  /// Returns a new [RetrieveRecipeInformation200ResponseScores] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RetrieveRecipeInformation200ResponseScores? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RetrieveRecipeInformation200ResponseScores[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RetrieveRecipeInformation200ResponseScores[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RetrieveRecipeInformation200ResponseScores(
        metaScore: num.parse('${json[r'meta_score']}'),
        weightWatcherSmartPoints: mapValueOfType<int>(json, r'weight_watcher_smart_points'),
        healthScore: mapValueOfType<int>(json, r'health_score'),
      );
    }
    return null;
  }

  static List<RetrieveRecipeInformation200ResponseScores> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RetrieveRecipeInformation200ResponseScores>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RetrieveRecipeInformation200ResponseScores.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RetrieveRecipeInformation200ResponseScores> mapFromJson(dynamic json) {
    final map = <String, RetrieveRecipeInformation200ResponseScores>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RetrieveRecipeInformation200ResponseScores.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RetrieveRecipeInformation200ResponseScores-objects as value to a dart map
  static Map<String, List<RetrieveRecipeInformation200ResponseScores>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RetrieveRecipeInformation200ResponseScores>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RetrieveRecipeInformation200ResponseScores.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

