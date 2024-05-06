//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchRecipes200ResponseRecipesInnerNutrition {
  /// Returns a new [SearchRecipes200ResponseRecipesInnerNutrition] instance.
  SearchRecipes200ResponseRecipesInnerNutrition({
    this.nutrients = const [],
  });

  List<SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner> nutrients;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchRecipes200ResponseRecipesInnerNutrition &&
    _deepEquality.equals(other.nutrients, nutrients);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (nutrients.hashCode);

  @override
  String toString() => 'SearchRecipes200ResponseRecipesInnerNutrition[nutrients=$nutrients]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'nutrients'] = this.nutrients;
    return json;
  }

  /// Returns a new [SearchRecipes200ResponseRecipesInnerNutrition] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchRecipes200ResponseRecipesInnerNutrition? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchRecipes200ResponseRecipesInnerNutrition[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchRecipes200ResponseRecipesInnerNutrition[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchRecipes200ResponseRecipesInnerNutrition(
        nutrients: SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner.listFromJson(json[r'nutrients']),
      );
    }
    return null;
  }

  static List<SearchRecipes200ResponseRecipesInnerNutrition> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchRecipes200ResponseRecipesInnerNutrition>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchRecipes200ResponseRecipesInnerNutrition.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchRecipes200ResponseRecipesInnerNutrition> mapFromJson(dynamic json) {
    final map = <String, SearchRecipes200ResponseRecipesInnerNutrition>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchRecipes200ResponseRecipesInnerNutrition.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchRecipes200ResponseRecipesInnerNutrition-objects as value to a dart map
  static Map<String, List<SearchRecipes200ResponseRecipesInnerNutrition>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchRecipes200ResponseRecipesInnerNutrition>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchRecipes200ResponseRecipesInnerNutrition.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

