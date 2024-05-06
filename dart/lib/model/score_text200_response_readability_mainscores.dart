//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ScoreText200ResponseReadabilityMainscores {
  /// Returns a new [ScoreText200ResponseReadabilityMainscores] instance.
  ScoreText200ResponseReadabilityMainscores({
    this.totalPossible,
    this.total,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalPossible;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ScoreText200ResponseReadabilityMainscores &&
    other.totalPossible == totalPossible &&
    other.total == total;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (totalPossible == null ? 0 : totalPossible!.hashCode) +
    (total == null ? 0 : total!.hashCode);

  @override
  String toString() => 'ScoreText200ResponseReadabilityMainscores[totalPossible=$totalPossible, total=$total]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.totalPossible != null) {
      json[r'total_possible'] = this.totalPossible;
    } else {
      json[r'total_possible'] = null;
    }
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    return json;
  }

  /// Returns a new [ScoreText200ResponseReadabilityMainscores] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScoreText200ResponseReadabilityMainscores? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ScoreText200ResponseReadabilityMainscores[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ScoreText200ResponseReadabilityMainscores[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ScoreText200ResponseReadabilityMainscores(
        totalPossible: mapValueOfType<int>(json, r'total_possible'),
        total: mapValueOfType<int>(json, r'total'),
      );
    }
    return null;
  }

  static List<ScoreText200ResponseReadabilityMainscores> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScoreText200ResponseReadabilityMainscores>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScoreText200ResponseReadabilityMainscores.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScoreText200ResponseReadabilityMainscores> mapFromJson(dynamic json) {
    final map = <String, ScoreText200ResponseReadabilityMainscores>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScoreText200ResponseReadabilityMainscores.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScoreText200ResponseReadabilityMainscores-objects as value to a dart map
  static Map<String, List<ScoreText200ResponseReadabilityMainscores>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ScoreText200ResponseReadabilityMainscores>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ScoreText200ResponseReadabilityMainscores.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

