//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RandomPoemAPI200Response {
  /// Returns a new [RandomPoemAPI200Response] instance.
  RandomPoemAPI200Response({
    this.title,
    this.author,
    this.poem,
  });

  String? title;

  String? author;

  String? poem;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RandomPoemAPI200Response &&
    other.title == title &&
    other.author == author &&
    other.poem == poem;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (title == null ? 0 : title!.hashCode) +
    (author == null ? 0 : author!.hashCode) +
    (poem == null ? 0 : poem!.hashCode);

  @override
  String toString() => 'RandomPoemAPI200Response[title=$title, author=$author, poem=$poem]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.author != null) {
      json[r'author'] = this.author;
    } else {
      json[r'author'] = null;
    }
    if (this.poem != null) {
      json[r'poem'] = this.poem;
    } else {
      json[r'poem'] = null;
    }
    return json;
  }

  /// Returns a new [RandomPoemAPI200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RandomPoemAPI200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RandomPoemAPI200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RandomPoemAPI200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RandomPoemAPI200Response(
        title: mapValueOfType<String>(json, r'title'),
        author: mapValueOfType<String>(json, r'author'),
        poem: mapValueOfType<String>(json, r'poem'),
      );
    }
    return null;
  }

  static List<RandomPoemAPI200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RandomPoemAPI200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RandomPoemAPI200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RandomPoemAPI200Response> mapFromJson(dynamic json) {
    final map = <String, RandomPoemAPI200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RandomPoemAPI200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RandomPoemAPI200Response-objects as value to a dart map
  static Map<String, List<RandomPoemAPI200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RandomPoemAPI200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RandomPoemAPI200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

