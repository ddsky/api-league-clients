//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInner {
  /// Returns a new [SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInner] instance.
  SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInner({
    this.number,
    this.ingredients = const [],
    this.equipment = const [],
    this.step,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? number;

  List<SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner> ingredients;

  List<String> equipment;

  String? step;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInner &&
    other.number == number &&
    _deepEquality.equals(other.ingredients, ingredients) &&
    _deepEquality.equals(other.equipment, equipment) &&
    other.step == step;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (number == null ? 0 : number!.hashCode) +
    (ingredients.hashCode) +
    (equipment.hashCode) +
    (step == null ? 0 : step!.hashCode);

  @override
  String toString() => 'SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInner[number=$number, ingredients=$ingredients, equipment=$equipment, step=$step]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.number != null) {
      json[r'number'] = this.number;
    } else {
      json[r'number'] = null;
    }
      json[r'ingredients'] = this.ingredients;
      json[r'equipment'] = this.equipment;
    if (this.step != null) {
      json[r'step'] = this.step;
    } else {
      json[r'step'] = null;
    }
    return json;
  }

  /// Returns a new [SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInner(
        number: mapValueOfType<int>(json, r'number'),
        ingredients: SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner.listFromJson(json[r'ingredients']),
        equipment: json[r'equipment'] is Iterable
            ? (json[r'equipment'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        step: mapValueOfType<String>(json, r'step'),
      );
    }
    return null;
  }

  static List<SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInner> mapFromJson(dynamic json) {
    final map = <String, SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInner-objects as value to a dart map
  static Map<String, List<SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

