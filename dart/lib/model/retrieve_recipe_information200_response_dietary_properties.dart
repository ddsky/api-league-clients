//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RetrieveRecipeInformation200ResponseDietaryProperties {
  /// Returns a new [RetrieveRecipeInformation200ResponseDietaryProperties] instance.
  RetrieveRecipeInformation200ResponseDietaryProperties({
    this.lowFodmap,
    this.vegetarian,
    this.vegan,
    this.glutenFree,
    this.dairyFree,
    this.gaps,
    this.diets = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? lowFodmap;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? vegetarian;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? vegan;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? glutenFree;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? dairyFree;

  String? gaps;

  List<String> diets;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RetrieveRecipeInformation200ResponseDietaryProperties &&
    other.lowFodmap == lowFodmap &&
    other.vegetarian == vegetarian &&
    other.vegan == vegan &&
    other.glutenFree == glutenFree &&
    other.dairyFree == dairyFree &&
    other.gaps == gaps &&
    _deepEquality.equals(other.diets, diets);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (lowFodmap == null ? 0 : lowFodmap!.hashCode) +
    (vegetarian == null ? 0 : vegetarian!.hashCode) +
    (vegan == null ? 0 : vegan!.hashCode) +
    (glutenFree == null ? 0 : glutenFree!.hashCode) +
    (dairyFree == null ? 0 : dairyFree!.hashCode) +
    (gaps == null ? 0 : gaps!.hashCode) +
    (diets.hashCode);

  @override
  String toString() => 'RetrieveRecipeInformation200ResponseDietaryProperties[lowFodmap=$lowFodmap, vegetarian=$vegetarian, vegan=$vegan, glutenFree=$glutenFree, dairyFree=$dairyFree, gaps=$gaps, diets=$diets]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.lowFodmap != null) {
      json[r'low_fodmap'] = this.lowFodmap;
    } else {
      json[r'low_fodmap'] = null;
    }
    if (this.vegetarian != null) {
      json[r'vegetarian'] = this.vegetarian;
    } else {
      json[r'vegetarian'] = null;
    }
    if (this.vegan != null) {
      json[r'vegan'] = this.vegan;
    } else {
      json[r'vegan'] = null;
    }
    if (this.glutenFree != null) {
      json[r'gluten_free'] = this.glutenFree;
    } else {
      json[r'gluten_free'] = null;
    }
    if (this.dairyFree != null) {
      json[r'dairy_free'] = this.dairyFree;
    } else {
      json[r'dairy_free'] = null;
    }
    if (this.gaps != null) {
      json[r'gaps'] = this.gaps;
    } else {
      json[r'gaps'] = null;
    }
      json[r'diets'] = this.diets;
    return json;
  }

  /// Returns a new [RetrieveRecipeInformation200ResponseDietaryProperties] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RetrieveRecipeInformation200ResponseDietaryProperties? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RetrieveRecipeInformation200ResponseDietaryProperties[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RetrieveRecipeInformation200ResponseDietaryProperties[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RetrieveRecipeInformation200ResponseDietaryProperties(
        lowFodmap: mapValueOfType<bool>(json, r'low_fodmap'),
        vegetarian: mapValueOfType<bool>(json, r'vegetarian'),
        vegan: mapValueOfType<bool>(json, r'vegan'),
        glutenFree: mapValueOfType<bool>(json, r'gluten_free'),
        dairyFree: mapValueOfType<bool>(json, r'dairy_free'),
        gaps: mapValueOfType<String>(json, r'gaps'),
        diets: json[r'diets'] is Iterable
            ? (json[r'diets'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<RetrieveRecipeInformation200ResponseDietaryProperties> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RetrieveRecipeInformation200ResponseDietaryProperties>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RetrieveRecipeInformation200ResponseDietaryProperties.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RetrieveRecipeInformation200ResponseDietaryProperties> mapFromJson(dynamic json) {
    final map = <String, RetrieveRecipeInformation200ResponseDietaryProperties>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RetrieveRecipeInformation200ResponseDietaryProperties.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RetrieveRecipeInformation200ResponseDietaryProperties-objects as value to a dart map
  static Map<String, List<RetrieveRecipeInformation200ResponseDietaryProperties>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RetrieveRecipeInformation200ResponseDietaryProperties>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RetrieveRecipeInformation200ResponseDietaryProperties.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

