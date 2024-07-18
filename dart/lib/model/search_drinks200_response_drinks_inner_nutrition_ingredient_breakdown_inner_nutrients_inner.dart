//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner {
  /// Returns a new [SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner] instance.
  SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner({
    this.name,
    this.percentOfDailyNeeds,
    this.amount,
    this.unit,
  });

  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? percentOfDailyNeeds;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? amount;

  String? unit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner &&
    other.name == name &&
    other.percentOfDailyNeeds == percentOfDailyNeeds &&
    other.amount == amount &&
    other.unit == unit;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (percentOfDailyNeeds == null ? 0 : percentOfDailyNeeds!.hashCode) +
    (amount == null ? 0 : amount!.hashCode) +
    (unit == null ? 0 : unit!.hashCode);

  @override
  String toString() => 'SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner[name=$name, percentOfDailyNeeds=$percentOfDailyNeeds, amount=$amount, unit=$unit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.percentOfDailyNeeds != null) {
      json[r'percent_of_daily_needs'] = this.percentOfDailyNeeds;
    } else {
      json[r'percent_of_daily_needs'] = null;
    }
    if (this.amount != null) {
      json[r'amount'] = this.amount;
    } else {
      json[r'amount'] = null;
    }
    if (this.unit != null) {
      json[r'unit'] = this.unit;
    } else {
      json[r'unit'] = null;
    }
    return json;
  }

  /// Returns a new [SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner(
        name: mapValueOfType<String>(json, r'name'),
        percentOfDailyNeeds: num.parse('${json[r'percent_of_daily_needs']}'),
        amount: mapValueOfType<int>(json, r'amount'),
        unit: mapValueOfType<String>(json, r'unit'),
      );
    }
    return null;
  }

  static List<SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner> mapFromJson(dynamic json) {
    final map = <String, SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner-objects as value to a dart map
  static Map<String, List<SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

