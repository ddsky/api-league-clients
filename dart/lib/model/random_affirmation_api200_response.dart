//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RandomAffirmationAPI200Response {
  /// Returns a new [RandomAffirmationAPI200Response] instance.
  RandomAffirmationAPI200Response({
    this.image,
    this.affirmation,
  });

  String? image;

  String? affirmation;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RandomAffirmationAPI200Response &&
    other.image == image &&
    other.affirmation == affirmation;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (image == null ? 0 : image!.hashCode) +
    (affirmation == null ? 0 : affirmation!.hashCode);

  @override
  String toString() => 'RandomAffirmationAPI200Response[image=$image, affirmation=$affirmation]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    if (this.affirmation != null) {
      json[r'affirmation'] = this.affirmation;
    } else {
      json[r'affirmation'] = null;
    }
    return json;
  }

  /// Returns a new [RandomAffirmationAPI200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RandomAffirmationAPI200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RandomAffirmationAPI200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RandomAffirmationAPI200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RandomAffirmationAPI200Response(
        image: mapValueOfType<String>(json, r'image'),
        affirmation: mapValueOfType<String>(json, r'affirmation'),
      );
    }
    return null;
  }

  static List<RandomAffirmationAPI200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RandomAffirmationAPI200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RandomAffirmationAPI200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RandomAffirmationAPI200Response> mapFromJson(dynamic json) {
    final map = <String, RandomAffirmationAPI200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RandomAffirmationAPI200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RandomAffirmationAPI200Response-objects as value to a dart map
  static Map<String, List<RandomAffirmationAPI200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RandomAffirmationAPI200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RandomAffirmationAPI200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

