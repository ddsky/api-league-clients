//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ScoreTextAPI200ResponseReadabilityMainscores {
  /// Returns a new [ScoreTextAPI200ResponseReadabilityMainscores] instance.
  ScoreTextAPI200ResponseReadabilityMainscores({
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
  bool operator ==(Object other) => identical(this, other) || other is ScoreTextAPI200ResponseReadabilityMainscores &&
    other.totalPossible == totalPossible &&
    other.total == total;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (totalPossible == null ? 0 : totalPossible!.hashCode) +
    (total == null ? 0 : total!.hashCode);

  @override
  String toString() => 'ScoreTextAPI200ResponseReadabilityMainscores[totalPossible=$totalPossible, total=$total]';

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

  /// Returns a new [ScoreTextAPI200ResponseReadabilityMainscores] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScoreTextAPI200ResponseReadabilityMainscores? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ScoreTextAPI200ResponseReadabilityMainscores[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ScoreTextAPI200ResponseReadabilityMainscores[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ScoreTextAPI200ResponseReadabilityMainscores(
        totalPossible: mapValueOfType<int>(json, r'total_possible'),
        total: mapValueOfType<int>(json, r'total'),
      );
    }
    return null;
  }

  static List<ScoreTextAPI200ResponseReadabilityMainscores> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScoreTextAPI200ResponseReadabilityMainscores>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScoreTextAPI200ResponseReadabilityMainscores.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScoreTextAPI200ResponseReadabilityMainscores> mapFromJson(dynamic json) {
    final map = <String, ScoreTextAPI200ResponseReadabilityMainscores>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScoreTextAPI200ResponseReadabilityMainscores.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScoreTextAPI200ResponseReadabilityMainscores-objects as value to a dart map
  static Map<String, List<ScoreTextAPI200ResponseReadabilityMainscores>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ScoreTextAPI200ResponseReadabilityMainscores>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ScoreTextAPI200ResponseReadabilityMainscores.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

