//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchRecipesAPI200ResponseRecipesInnerNutrition {
  /// Returns a new [SearchRecipesAPI200ResponseRecipesInnerNutrition] instance.
  SearchRecipesAPI200ResponseRecipesInnerNutrition({
    this.nutrients = const [],
  });

  List<SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner> nutrients;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchRecipesAPI200ResponseRecipesInnerNutrition &&
    _deepEquality.equals(other.nutrients, nutrients);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (nutrients.hashCode);

  @override
  String toString() => 'SearchRecipesAPI200ResponseRecipesInnerNutrition[nutrients=$nutrients]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'nutrients'] = this.nutrients;
    return json;
  }

  /// Returns a new [SearchRecipesAPI200ResponseRecipesInnerNutrition] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchRecipesAPI200ResponseRecipesInnerNutrition? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchRecipesAPI200ResponseRecipesInnerNutrition[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchRecipesAPI200ResponseRecipesInnerNutrition[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchRecipesAPI200ResponseRecipesInnerNutrition(
        nutrients: SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner.listFromJson(json[r'nutrients']),
      );
    }
    return null;
  }

  static List<SearchRecipesAPI200ResponseRecipesInnerNutrition> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchRecipesAPI200ResponseRecipesInnerNutrition>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchRecipesAPI200ResponseRecipesInnerNutrition.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchRecipesAPI200ResponseRecipesInnerNutrition> mapFromJson(dynamic json) {
    final map = <String, SearchRecipesAPI200ResponseRecipesInnerNutrition>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchRecipesAPI200ResponseRecipesInnerNutrition.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchRecipesAPI200ResponseRecipesInnerNutrition-objects as value to a dart map
  static Map<String, List<SearchRecipesAPI200ResponseRecipesInnerNutrition>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchRecipesAPI200ResponseRecipesInnerNutrition>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchRecipesAPI200ResponseRecipesInnerNutrition.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

