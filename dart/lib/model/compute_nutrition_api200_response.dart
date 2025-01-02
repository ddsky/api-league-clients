//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ComputeNutritionAPI200Response {
  /// Returns a new [ComputeNutritionAPI200Response] instance.
  ComputeNutritionAPI200Response({
    this.nutrients = const [],
    this.properties = const [],
    this.flavonoids = const [],
    this.ingredientBreakdown = const [],
    this.caloricBreakdown,
    this.weightPerServing,
  });

  List<SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner> nutrients;

  List<SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner> properties;

  List<SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner> flavonoids;

  List<ComputeNutritionAPI200ResponseIngredientBreakdownInner> ingredientBreakdown;

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
  bool operator ==(Object other) => identical(this, other) || other is ComputeNutritionAPI200Response &&
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
  String toString() => 'ComputeNutritionAPI200Response[nutrients=$nutrients, properties=$properties, flavonoids=$flavonoids, ingredientBreakdown=$ingredientBreakdown, caloricBreakdown=$caloricBreakdown, weightPerServing=$weightPerServing]';

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

  /// Returns a new [ComputeNutritionAPI200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ComputeNutritionAPI200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ComputeNutritionAPI200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ComputeNutritionAPI200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ComputeNutritionAPI200Response(
        nutrients: SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner.listFromJson(json[r'nutrients']),
        properties: SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner.listFromJson(json[r'properties']),
        flavonoids: SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner.listFromJson(json[r'flavonoids']),
        ingredientBreakdown: ComputeNutritionAPI200ResponseIngredientBreakdownInner.listFromJson(json[r'ingredient_breakdown']),
        caloricBreakdown: SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown.fromJson(json[r'caloric_breakdown']),
        weightPerServing: SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing.fromJson(json[r'weight_per_serving']),
      );
    }
    return null;
  }

  static List<ComputeNutritionAPI200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ComputeNutritionAPI200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ComputeNutritionAPI200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ComputeNutritionAPI200Response> mapFromJson(dynamic json) {
    final map = <String, ComputeNutritionAPI200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ComputeNutritionAPI200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ComputeNutritionAPI200Response-objects as value to a dart map
  static Map<String, List<ComputeNutritionAPI200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ComputeNutritionAPI200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ComputeNutritionAPI200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

