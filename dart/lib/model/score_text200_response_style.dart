//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ScoreText200ResponseStyle {
  /// Returns a new [ScoreText200ResponseStyle] instance.
  ScoreText200ResponseStyle({
    this.mainscores,
    this.subscores,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ScoreText200ResponseReadabilityMainscores? mainscores;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ScoreText200ResponseStyleSubscores? subscores;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ScoreText200ResponseStyle &&
    other.mainscores == mainscores &&
    other.subscores == subscores;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (mainscores == null ? 0 : mainscores!.hashCode) +
    (subscores == null ? 0 : subscores!.hashCode);

  @override
  String toString() => 'ScoreText200ResponseStyle[mainscores=$mainscores, subscores=$subscores]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.mainscores != null) {
      json[r'mainscores'] = this.mainscores;
    } else {
      json[r'mainscores'] = null;
    }
    if (this.subscores != null) {
      json[r'subscores'] = this.subscores;
    } else {
      json[r'subscores'] = null;
    }
    return json;
  }

  /// Returns a new [ScoreText200ResponseStyle] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScoreText200ResponseStyle? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ScoreText200ResponseStyle[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ScoreText200ResponseStyle[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ScoreText200ResponseStyle(
        mainscores: ScoreText200ResponseReadabilityMainscores.fromJson(json[r'mainscores']),
        subscores: ScoreText200ResponseStyleSubscores.fromJson(json[r'subscores']),
      );
    }
    return null;
  }

  static List<ScoreText200ResponseStyle> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScoreText200ResponseStyle>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScoreText200ResponseStyle.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScoreText200ResponseStyle> mapFromJson(dynamic json) {
    final map = <String, ScoreText200ResponseStyle>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScoreText200ResponseStyle.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScoreText200ResponseStyle-objects as value to a dart map
  static Map<String, List<ScoreText200ResponseStyle>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ScoreText200ResponseStyle>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ScoreText200ResponseStyle.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

