//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchDrinks200ResponseDrinksInnerNutrition {
  /// Returns a new [SearchDrinks200ResponseDrinksInnerNutrition] instance.
  SearchDrinks200ResponseDrinksInnerNutrition({
    this.weightPerServing,
    this.caloricBreakdown,
    this.flavonoids = const [],
    this.ingredientBreakdown = const [],
    this.properties = const [],
    this.nutrients = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing? weightPerServing;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown? caloricBreakdown;

  List<SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner> flavonoids;

  List<SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner> ingredientBreakdown;

  List<SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner> properties;

  List<SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner> nutrients;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchDrinks200ResponseDrinksInnerNutrition &&
    other.weightPerServing == weightPerServing &&
    other.caloricBreakdown == caloricBreakdown &&
    _deepEquality.equals(other.flavonoids, flavonoids) &&
    _deepEquality.equals(other.ingredientBreakdown, ingredientBreakdown) &&
    _deepEquality.equals(other.properties, properties) &&
    _deepEquality.equals(other.nutrients, nutrients);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (weightPerServing == null ? 0 : weightPerServing!.hashCode) +
    (caloricBreakdown == null ? 0 : caloricBreakdown!.hashCode) +
    (flavonoids.hashCode) +
    (ingredientBreakdown.hashCode) +
    (properties.hashCode) +
    (nutrients.hashCode);

  @override
  String toString() => 'SearchDrinks200ResponseDrinksInnerNutrition[weightPerServing=$weightPerServing, caloricBreakdown=$caloricBreakdown, flavonoids=$flavonoids, ingredientBreakdown=$ingredientBreakdown, properties=$properties, nutrients=$nutrients]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.weightPerServing != null) {
      json[r'weight_per_serving'] = this.weightPerServing;
    } else {
      json[r'weight_per_serving'] = null;
    }
    if (this.caloricBreakdown != null) {
      json[r'caloric_breakdown'] = this.caloricBreakdown;
    } else {
      json[r'caloric_breakdown'] = null;
    }
      json[r'flavonoids'] = this.flavonoids;
      json[r'ingredient_breakdown'] = this.ingredientBreakdown;
      json[r'properties'] = this.properties;
      json[r'nutrients'] = this.nutrients;
    return json;
  }

  /// Returns a new [SearchDrinks200ResponseDrinksInnerNutrition] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchDrinks200ResponseDrinksInnerNutrition? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchDrinks200ResponseDrinksInnerNutrition[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchDrinks200ResponseDrinksInnerNutrition[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchDrinks200ResponseDrinksInnerNutrition(
        weightPerServing: SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing.fromJson(json[r'weight_per_serving']),
        caloricBreakdown: SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown.fromJson(json[r'caloric_breakdown']),
        flavonoids: SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner.listFromJson(json[r'flavonoids']),
        ingredientBreakdown: SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner.listFromJson(json[r'ingredient_breakdown']),
        properties: SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner.listFromJson(json[r'properties']),
        nutrients: SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner.listFromJson(json[r'nutrients']),
      );
    }
    return null;
  }

  static List<SearchDrinks200ResponseDrinksInnerNutrition> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchDrinks200ResponseDrinksInnerNutrition>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchDrinks200ResponseDrinksInnerNutrition.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchDrinks200ResponseDrinksInnerNutrition> mapFromJson(dynamic json) {
    final map = <String, SearchDrinks200ResponseDrinksInnerNutrition>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchDrinks200ResponseDrinksInnerNutrition.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchDrinks200ResponseDrinksInnerNutrition-objects as value to a dart map
  static Map<String, List<SearchDrinks200ResponseDrinksInnerNutrition>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchDrinks200ResponseDrinksInnerNutrition>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchDrinks200ResponseDrinksInnerNutrition.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

