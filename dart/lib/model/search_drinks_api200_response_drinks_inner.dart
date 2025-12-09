//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchDrinksAPI200ResponseDrinksInner {
  /// Returns a new [SearchDrinksAPI200ResponseDrinksInner] instance.
  SearchDrinksAPI200ResponseDrinksInner({
    this.id,
    this.title,
    this.images = const [],
    this.pricePerServing,
    this.nutrition,
    this.flavors = const [],
    this.glassType,
    this.description,
    this.cuisines = const [],
    this.ingredients = const [],
    this.instructions = const [],
    this.credits,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  String? title;

  List<String> images;

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
  SearchDrinksAPI200ResponseDrinksInnerNutrition? nutrition;

  List<String> flavors;

  String? glassType;

  String? description;

  List<String> cuisines;

  List<SearchDrinksAPI200ResponseDrinksInnerIngredientsInner> ingredients;

  List<SearchDrinksAPI200ResponseDrinksInnerInstructionsInner> instructions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SearchDrinksAPI200ResponseDrinksInnerCredits? credits;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchDrinksAPI200ResponseDrinksInner &&
    other.id == id &&
    other.title == title &&
    _deepEquality.equals(other.images, images) &&
    other.pricePerServing == pricePerServing &&
    other.nutrition == nutrition &&
    _deepEquality.equals(other.flavors, flavors) &&
    other.glassType == glassType &&
    other.description == description &&
    _deepEquality.equals(other.cuisines, cuisines) &&
    _deepEquality.equals(other.ingredients, ingredients) &&
    _deepEquality.equals(other.instructions, instructions) &&
    other.credits == credits;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (images.hashCode) +
    (pricePerServing == null ? 0 : pricePerServing!.hashCode) +
    (nutrition == null ? 0 : nutrition!.hashCode) +
    (flavors.hashCode) +
    (glassType == null ? 0 : glassType!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (cuisines.hashCode) +
    (ingredients.hashCode) +
    (instructions.hashCode) +
    (credits == null ? 0 : credits!.hashCode);

  @override
  String toString() => 'SearchDrinksAPI200ResponseDrinksInner[id=$id, title=$title, images=$images, pricePerServing=$pricePerServing, nutrition=$nutrition, flavors=$flavors, glassType=$glassType, description=$description, cuisines=$cuisines, ingredients=$ingredients, instructions=$instructions, credits=$credits]';

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
      json[r'images'] = this.images;
    if (this.pricePerServing != null) {
      json[r'price_per_serving'] = this.pricePerServing;
    } else {
      json[r'price_per_serving'] = null;
    }
    if (this.nutrition != null) {
      json[r'nutrition'] = this.nutrition;
    } else {
      json[r'nutrition'] = null;
    }
      json[r'flavors'] = this.flavors;
    if (this.glassType != null) {
      json[r'glass_type'] = this.glassType;
    } else {
      json[r'glass_type'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
      json[r'cuisines'] = this.cuisines;
      json[r'ingredients'] = this.ingredients;
      json[r'instructions'] = this.instructions;
    if (this.credits != null) {
      json[r'credits'] = this.credits;
    } else {
      json[r'credits'] = null;
    }
    return json;
  }

  /// Returns a new [SearchDrinksAPI200ResponseDrinksInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchDrinksAPI200ResponseDrinksInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchDrinksAPI200ResponseDrinksInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchDrinksAPI200ResponseDrinksInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchDrinksAPI200ResponseDrinksInner(
        id: mapValueOfType<int>(json, r'id'),
        title: mapValueOfType<String>(json, r'title'),
        images: json[r'images'] is Iterable
            ? (json[r'images'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        pricePerServing: num.parse('${json[r'price_per_serving']}'),
        nutrition: SearchDrinksAPI200ResponseDrinksInnerNutrition.fromJson(json[r'nutrition']),
        flavors: json[r'flavors'] is Iterable
            ? (json[r'flavors'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        glassType: mapValueOfType<String>(json, r'glass_type'),
        description: mapValueOfType<String>(json, r'description'),
        cuisines: json[r'cuisines'] is Iterable
            ? (json[r'cuisines'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        ingredients: SearchDrinksAPI200ResponseDrinksInnerIngredientsInner.listFromJson(json[r'ingredients']),
        instructions: SearchDrinksAPI200ResponseDrinksInnerInstructionsInner.listFromJson(json[r'instructions']),
        credits: SearchDrinksAPI200ResponseDrinksInnerCredits.fromJson(json[r'credits']),
      );
    }
    return null;
  }

  static List<SearchDrinksAPI200ResponseDrinksInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchDrinksAPI200ResponseDrinksInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchDrinksAPI200ResponseDrinksInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchDrinksAPI200ResponseDrinksInner> mapFromJson(dynamic json) {
    final map = <String, SearchDrinksAPI200ResponseDrinksInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchDrinksAPI200ResponseDrinksInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchDrinksAPI200ResponseDrinksInner-objects as value to a dart map
  static Map<String, List<SearchDrinksAPI200ResponseDrinksInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchDrinksAPI200ResponseDrinksInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchDrinksAPI200ResponseDrinksInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

