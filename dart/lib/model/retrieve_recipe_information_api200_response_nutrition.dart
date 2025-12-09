//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RetrieveRecipeInformationAPI200ResponseNutrition {
  /// Returns a new [RetrieveRecipeInformationAPI200ResponseNutrition] instance.
  RetrieveRecipeInformationAPI200ResponseNutrition({
    this.nutrients = const [],
    this.properties = const [],
    this.flavonoids = const [],
    this.ingredientBreakdown = const [],
    this.caloricBreakdown,
    this.weightPerServing,
  });

  List<SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner> nutrients;

  List<SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner> properties;

  List<SearchDrinksAPI200ResponseDrinksInnerNutritionPropertiesInner> flavonoids;

  List<RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner> ingredientBreakdown;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown? caloricBreakdown;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing? weightPerServing;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RetrieveRecipeInformationAPI200ResponseNutrition &&
    _deepEquality.equals(other.nutrients, nutrients) &&
    _deepEquality.equals(other.properties, properties) &&
    _deepEquality.equals(other.flavonoids, flavonoids) &&
    _deepEquality.equals(other.ingredientBreakdown, ingredientBreakdown) &&
    other.caloricBreakdown == caloricBreakdown &&
    other.weightPerServing == weightPerServing;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (nutrients.hashCode) +
    (properties.hashCode) +
    (flavonoids.hashCode) +
    (ingredientBreakdown.hashCode) +
    (caloricBreakdown == null ? 0 : caloricBreakdown!.hashCode) +
    (weightPerServing == null ? 0 : weightPerServing!.hashCode);

  @override
  String toString() => 'RetrieveRecipeInformationAPI200ResponseNutrition[nutrients=$nutrients, properties=$properties, flavonoids=$flavonoids, ingredientBreakdown=$ingredientBreakdown, caloricBreakdown=$caloricBreakdown, weightPerServing=$weightPerServing]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'nutrients'] = this.nutrients;
      json[r'properties'] = this.properties;
      json[r'flavonoids'] = this.flavonoids;
      json[r'ingredient_breakdown'] = this.ingredientBreakdown;
    if (this.caloricBreakdown != null) {
      json[r'caloric_breakdown'] = this.caloricBreakdown;
    } else {
      json[r'caloric_breakdown'] = null;
    }
    if (this.weightPerServing != null) {
      json[r'weight_per_serving'] = this.weightPerServing;
    } else {
      json[r'weight_per_serving'] = null;
    }
    return json;
  }

  /// Returns a new [RetrieveRecipeInformationAPI200ResponseNutrition] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RetrieveRecipeInformationAPI200ResponseNutrition? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RetrieveRecipeInformationAPI200ResponseNutrition[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RetrieveRecipeInformationAPI200ResponseNutrition[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RetrieveRecipeInformationAPI200ResponseNutrition(
        nutrients: SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner.listFromJson(json[r'nutrients']),
        properties: SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner.listFromJson(json[r'properties']),
        flavonoids: SearchDrinksAPI200ResponseDrinksInnerNutritionPropertiesInner.listFromJson(json[r'flavonoids']),
        ingredientBreakdown: RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner.listFromJson(json[r'ingredient_breakdown']),
        caloricBreakdown: SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown.fromJson(json[r'caloric_breakdown']),
        weightPerServing: SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing.fromJson(json[r'weight_per_serving']),
      );
    }
    return null;
  }

  static List<RetrieveRecipeInformationAPI200ResponseNutrition> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RetrieveRecipeInformationAPI200ResponseNutrition>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RetrieveRecipeInformationAPI200ResponseNutrition.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RetrieveRecipeInformationAPI200ResponseNutrition> mapFromJson(dynamic json) {
    final map = <String, RetrieveRecipeInformationAPI200ResponseNutrition>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RetrieveRecipeInformationAPI200ResponseNutrition.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RetrieveRecipeInformationAPI200ResponseNutrition-objects as value to a dart map
  static Map<String, List<RetrieveRecipeInformationAPI200ResponseNutrition>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RetrieveRecipeInformationAPI200ResponseNutrition>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RetrieveRecipeInformationAPI200ResponseNutrition.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

