//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ComputeNutrition200Response {
  /// Returns a new [ComputeNutrition200Response] instance.
  ComputeNutrition200Response({
    this.nutrients = const [],
    this.properties = const [],
    this.flavonoids = const [],
    this.ingredientBreakdown = const [],
    this.caloricBreakdown,
    this.weightPerServing,
  });

  List<RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner> nutrients;

  List<RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner> properties;

  List<SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner> flavonoids;

  List<ComputeNutrition200ResponseIngredientBreakdownInner> ingredientBreakdown;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown? caloricBreakdown;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RetrieveRecipeInformation200ResponseNutritionWeightPerServing? weightPerServing;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ComputeNutrition200Response &&
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
  String toString() => 'ComputeNutrition200Response[nutrients=$nutrients, properties=$properties, flavonoids=$flavonoids, ingredientBreakdown=$ingredientBreakdown, caloricBreakdown=$caloricBreakdown, weightPerServing=$weightPerServing]';

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

  /// Returns a new [ComputeNutrition200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ComputeNutrition200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ComputeNutrition200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ComputeNutrition200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ComputeNutrition200Response(
        nutrients: RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner.listFromJson(json[r'nutrients']),
        properties: RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner.listFromJson(json[r'properties']),
        flavonoids: SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner.listFromJson(json[r'flavonoids']),
        ingredientBreakdown: ComputeNutrition200ResponseIngredientBreakdownInner.listFromJson(json[r'ingredient_breakdown']),
        caloricBreakdown: RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown.fromJson(json[r'caloric_breakdown']),
        weightPerServing: RetrieveRecipeInformation200ResponseNutritionWeightPerServing.fromJson(json[r'weight_per_serving']),
      );
    }
    return null;
  }

  static List<ComputeNutrition200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ComputeNutrition200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ComputeNutrition200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ComputeNutrition200Response> mapFromJson(dynamic json) {
    final map = <String, ComputeNutrition200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ComputeNutrition200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ComputeNutrition200Response-objects as value to a dart map
  static Map<String, List<ComputeNutrition200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ComputeNutrition200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ComputeNutrition200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

