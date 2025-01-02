//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RandomRiddleAPI200Response {
  /// Returns a new [RandomRiddleAPI200Response] instance.
  RandomRiddleAPI200Response({
    this.riddle,
    this.answer,
    this.difficulty,
  });

  String? riddle;

  String? answer;

  String? difficulty;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RandomRiddleAPI200Response &&
    other.riddle == riddle &&
    other.answer == answer &&
    other.difficulty == difficulty;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (riddle == null ? 0 : riddle!.hashCode) +
    (answer == null ? 0 : answer!.hashCode) +
    (difficulty == null ? 0 : difficulty!.hashCode);

  @override
  String toString() => 'RandomRiddleAPI200Response[riddle=$riddle, answer=$answer, difficulty=$difficulty]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.riddle != null) {
      json[r'riddle'] = this.riddle;
    } else {
      json[r'riddle'] = null;
    }
    if (this.answer != null) {
      json[r'answer'] = this.answer;
    } else {
      json[r'answer'] = null;
    }
    if (this.difficulty != null) {
      json[r'difficulty'] = this.difficulty;
    } else {
      json[r'difficulty'] = null;
    }
    return json;
  }

  /// Returns a new [RandomRiddleAPI200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RandomRiddleAPI200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RandomRiddleAPI200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RandomRiddleAPI200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RandomRiddleAPI200Response(
        riddle: mapValueOfType<String>(json, r'riddle'),
        answer: mapValueOfType<String>(json, r'answer'),
        difficulty: mapValueOfType<String>(json, r'difficulty'),
      );
    }
    return null;
  }

  static List<RandomRiddleAPI200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RandomRiddleAPI200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RandomRiddleAPI200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RandomRiddleAPI200Response> mapFromJson(dynamic json) {
    final map = <String, RandomRiddleAPI200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RandomRiddleAPI200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RandomRiddleAPI200Response-objects as value to a dart map
  static Map<String, List<RandomRiddleAPI200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RandomRiddleAPI200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RandomRiddleAPI200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

