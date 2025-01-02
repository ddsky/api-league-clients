//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RetrieveRecipeInformationAPI200ResponseTimes {
  /// Returns a new [RetrieveRecipeInformationAPI200ResponseTimes] instance.
  RetrieveRecipeInformationAPI200ResponseTimes({
    this.totalMinutes,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalMinutes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RetrieveRecipeInformationAPI200ResponseTimes &&
    other.totalMinutes == totalMinutes;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (totalMinutes == null ? 0 : totalMinutes!.hashCode);

  @override
  String toString() => 'RetrieveRecipeInformationAPI200ResponseTimes[totalMinutes=$totalMinutes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.totalMinutes != null) {
      json[r'total_minutes'] = this.totalMinutes;
    } else {
      json[r'total_minutes'] = null;
    }
    return json;
  }

  /// Returns a new [RetrieveRecipeInformationAPI200ResponseTimes] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RetrieveRecipeInformationAPI200ResponseTimes? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RetrieveRecipeInformationAPI200ResponseTimes[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RetrieveRecipeInformationAPI200ResponseTimes[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RetrieveRecipeInformationAPI200ResponseTimes(
        totalMinutes: mapValueOfType<int>(json, r'total_minutes'),
      );
    }
    return null;
  }

  static List<RetrieveRecipeInformationAPI200ResponseTimes> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RetrieveRecipeInformationAPI200ResponseTimes>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RetrieveRecipeInformationAPI200ResponseTimes.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RetrieveRecipeInformationAPI200ResponseTimes> mapFromJson(dynamic json) {
    final map = <String, RetrieveRecipeInformationAPI200ResponseTimes>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RetrieveRecipeInformationAPI200ResponseTimes.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RetrieveRecipeInformationAPI200ResponseTimes-objects as value to a dart map
  static Map<String, List<RetrieveRecipeInformationAPI200ResponseTimes>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RetrieveRecipeInformationAPI200ResponseTimes>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RetrieveRecipeInformationAPI200ResponseTimes.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

