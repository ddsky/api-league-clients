//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RetrieveRecipeInformationAPI200ResponseInstructionsInner {
  /// Returns a new [RetrieveRecipeInformationAPI200ResponseInstructionsInner] instance.
  RetrieveRecipeInformationAPI200ResponseInstructionsInner({
    this.name,
    this.steps = const [],
  });

  String? name;

  List<RetrieveRecipeInformationAPI200ResponseInstructionsInnerStepsInner> steps;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RetrieveRecipeInformationAPI200ResponseInstructionsInner &&
    other.name == name &&
    _deepEquality.equals(other.steps, steps);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (steps.hashCode);

  @override
  String toString() => 'RetrieveRecipeInformationAPI200ResponseInstructionsInner[name=$name, steps=$steps]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'steps'] = this.steps;
    return json;
  }

  /// Returns a new [RetrieveRecipeInformationAPI200ResponseInstructionsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RetrieveRecipeInformationAPI200ResponseInstructionsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RetrieveRecipeInformationAPI200ResponseInstructionsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RetrieveRecipeInformationAPI200ResponseInstructionsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RetrieveRecipeInformationAPI200ResponseInstructionsInner(
        name: mapValueOfType<String>(json, r'name'),
        steps: RetrieveRecipeInformationAPI200ResponseInstructionsInnerStepsInner.listFromJson(json[r'steps']),
      );
    }
    return null;
  }

  static List<RetrieveRecipeInformationAPI200ResponseInstructionsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RetrieveRecipeInformationAPI200ResponseInstructionsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RetrieveRecipeInformationAPI200ResponseInstructionsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RetrieveRecipeInformationAPI200ResponseInstructionsInner> mapFromJson(dynamic json) {
    final map = <String, RetrieveRecipeInformationAPI200ResponseInstructionsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RetrieveRecipeInformationAPI200ResponseInstructionsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RetrieveRecipeInformationAPI200ResponseInstructionsInner-objects as value to a dart map
  static Map<String, List<RetrieveRecipeInformationAPI200ResponseInstructionsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RetrieveRecipeInformationAPI200ResponseInstructionsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RetrieveRecipeInformationAPI200ResponseInstructionsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

