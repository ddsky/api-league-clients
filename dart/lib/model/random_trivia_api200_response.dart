//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RandomTriviaAPI200Response {
  /// Returns a new [RandomTriviaAPI200Response] instance.
  RandomTriviaAPI200Response({
    this.trivia,
  });

  String? trivia;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RandomTriviaAPI200Response &&
    other.trivia == trivia;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (trivia == null ? 0 : trivia!.hashCode);

  @override
  String toString() => 'RandomTriviaAPI200Response[trivia=$trivia]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.trivia != null) {
      json[r'trivia'] = this.trivia;
    } else {
      json[r'trivia'] = null;
    }
    return json;
  }

  /// Returns a new [RandomTriviaAPI200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RandomTriviaAPI200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RandomTriviaAPI200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RandomTriviaAPI200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RandomTriviaAPI200Response(
        trivia: mapValueOfType<String>(json, r'trivia'),
      );
    }
    return null;
  }

  static List<RandomTriviaAPI200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RandomTriviaAPI200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RandomTriviaAPI200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RandomTriviaAPI200Response> mapFromJson(dynamic json) {
    final map = <String, RandomTriviaAPI200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RandomTriviaAPI200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RandomTriviaAPI200Response-objects as value to a dart map
  static Map<String, List<RandomTriviaAPI200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RandomTriviaAPI200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RandomTriviaAPI200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

