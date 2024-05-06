//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RetrieveRecipeInformation200Response {
  /// Returns a new [RetrieveRecipeInformation200Response] instance.
  RetrieveRecipeInformation200Response({
    this.id,
    this.title,
    this.servings,
    this.images = const [],
    this.dietaryProperties,
    this.pricePerServing,
    this.times,
    this.nutrition,
    this.taste,
    this.cuisines = const [],
    this.mealTypes = const [],
    this.occasions = const [],
    this.ingredients = const [],
    this.instructions = const [],
    this.credits,
    this.scores,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  String? title;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? servings;

  List<String> images;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RetrieveRecipeInformation200ResponseDietaryProperties? dietaryProperties;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? pricePerServing;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RetrieveRecipeInformation200ResponseTimes? times;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RetrieveRecipeInformation200ResponseNutrition? nutrition;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RetrieveRecipeInformation200ResponseTaste? taste;

  List<String> cuisines;

  List<String> mealTypes;

  List<String> occasions;

  List<RetrieveRecipeInformation200ResponseIngredientsInner> ingredients;

  List<RetrieveRecipeInformation200ResponseInstructionsInner> instructions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RetrieveRecipeInformation200ResponseCredits? credits;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RetrieveRecipeInformation200ResponseScores? scores;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RetrieveRecipeInformation200Response &&
    other.id == id &&
    other.title == title &&
    other.servings == servings &&
    _deepEquality.equals(other.images, images) &&
    other.dietaryProperties == dietaryProperties &&
    other.pricePerServing == pricePerServing &&
    other.times == times &&
    other.nutrition == nutrition &&
    other.taste == taste &&
    _deepEquality.equals(other.cuisines, cuisines) &&
    _deepEquality.equals(other.mealTypes, mealTypes) &&
    _deepEquality.equals(other.occasions, occasions) &&
    _deepEquality.equals(other.ingredients, ingredients) &&
    _deepEquality.equals(other.instructions, instructions) &&
    other.credits == credits &&
    other.scores == scores;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (servings == null ? 0 : servings!.hashCode) +
    (images.hashCode) +
    (dietaryProperties == null ? 0 : dietaryProperties!.hashCode) +
    (pricePerServing == null ? 0 : pricePerServing!.hashCode) +
    (times == null ? 0 : times!.hashCode) +
    (nutrition == null ? 0 : nutrition!.hashCode) +
    (taste == null ? 0 : taste!.hashCode) +
    (cuisines.hashCode) +
    (mealTypes.hashCode) +
    (occasions.hashCode) +
    (ingredients.hashCode) +
    (instructions.hashCode) +
    (credits == null ? 0 : credits!.hashCode) +
    (scores == null ? 0 : scores!.hashCode);

  @override
  String toString() => 'RetrieveRecipeInformation200Response[id=$id, title=$title, servings=$servings, images=$images, dietaryProperties=$dietaryProperties, pricePerServing=$pricePerServing, times=$times, nutrition=$nutrition, taste=$taste, cuisines=$cuisines, mealTypes=$mealTypes, occasions=$occasions, ingredients=$ingredients, instructions=$instructions, credits=$credits, scores=$scores]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.servings != null) {
      json[r'servings'] = this.servings;
    } else {
      json[r'servings'] = null;
    }
      json[r'images'] = this.images;
    if (this.dietaryProperties != null) {
      json[r'dietary_properties'] = this.dietaryProperties;
    } else {
      json[r'dietary_properties'] = null;
    }
    if (this.pricePerServing != null) {
      json[r'price_per_serving'] = this.pricePerServing;
    } else {
      json[r'price_per_serving'] = null;
    }
    if (this.times != null) {
      json[r'times'] = this.times;
    } else {
      json[r'times'] = null;
    }
    if (this.nutrition != null) {
      json[r'nutrition'] = this.nutrition;
    } else {
      json[r'nutrition'] = null;
    }
    if (this.taste != null) {
      json[r'taste'] = this.taste;
    } else {
      json[r'taste'] = null;
    }
      json[r'cuisines'] = this.cuisines;
      json[r'meal_types'] = this.mealTypes;
      json[r'occasions'] = this.occasions;
      json[r'ingredients'] = this.ingredients;
      json[r'instructions'] = this.instructions;
    if (this.credits != null) {
      json[r'credits'] = this.credits;
    } else {
      json[r'credits'] = null;
    }
    if (this.scores != null) {
      json[r'scores'] = this.scores;
    } else {
      json[r'scores'] = null;
    }
    return json;
  }

  /// Returns a new [RetrieveRecipeInformation200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RetrieveRecipeInformation200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RetrieveRecipeInformation200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RetrieveRecipeInformation200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RetrieveRecipeInformation200Response(
        id: mapValueOfType<int>(json, r'id'),
        title: mapValueOfType<String>(json, r'title'),
        servings: mapValueOfType<int>(json, r'servings'),
        images: json[r'images'] is Iterable
            ? (json[r'images'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        dietaryProperties: RetrieveRecipeInformation200ResponseDietaryProperties.fromJson(json[r'dietary_properties']),
        pricePerServing: num.parse('${json[r'price_per_serving']}'),
        times: RetrieveRecipeInformation200ResponseTimes.fromJson(json[r'times']),
        nutrition: RetrieveRecipeInformation200ResponseNutrition.fromJson(json[r'nutrition']),
        taste: RetrieveRecipeInformation200ResponseTaste.fromJson(json[r'taste']),
        cuisines: json[r'cuisines'] is Iterable
            ? (json[r'cuisines'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        mealTypes: json[r'meal_types'] is Iterable
            ? (json[r'meal_types'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        occasions: json[r'occasions'] is Iterable
            ? (json[r'occasions'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        ingredients: RetrieveRecipeInformation200ResponseIngredientsInner.listFromJson(json[r'ingredients']),
        instructions: RetrieveRecipeInformation200ResponseInstructionsInner.listFromJson(json[r'instructions']),
        credits: RetrieveRecipeInformation200ResponseCredits.fromJson(json[r'credits']),
        scores: RetrieveRecipeInformation200ResponseScores.fromJson(json[r'scores']),
      );
    }
    return null;
  }

  static List<RetrieveRecipeInformation200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RetrieveRecipeInformation200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RetrieveRecipeInformation200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RetrieveRecipeInformation200Response> mapFromJson(dynamic json) {
    final map = <String, RetrieveRecipeInformation200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RetrieveRecipeInformation200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RetrieveRecipeInformation200Response-objects as value to a dart map
  static Map<String, List<RetrieveRecipeInformation200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RetrieveRecipeInformation200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RetrieveRecipeInformation200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

