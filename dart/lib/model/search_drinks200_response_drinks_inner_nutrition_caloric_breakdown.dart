//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown {
  /// Returns a new [SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown] instance.
  SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown({
    this.percentFat,
    this.percentCarbs,
    this.percentProtein,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? percentFat;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? percentCarbs;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? percentProtein;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown &&
    other.percentFat == percentFat &&
    other.percentCarbs == percentCarbs &&
    other.percentProtein == percentProtein;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (percentFat == null ? 0 : percentFat!.hashCode) +
    (percentCarbs == null ? 0 : percentCarbs!.hashCode) +
    (percentProtein == null ? 0 : percentProtein!.hashCode);

  @override
  String toString() => 'SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown[percentFat=$percentFat, percentCarbs=$percentCarbs, percentProtein=$percentProtein]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.percentFat != null) {
      json[r'percent_fat'] = this.percentFat;
    } else {
      json[r'percent_fat'] = null;
    }
    if (this.percentCarbs != null) {
      json[r'percent_carbs'] = this.percentCarbs;
    } else {
      json[r'percent_carbs'] = null;
    }
    if (this.percentProtein != null) {
      json[r'percent_protein'] = this.percentProtein;
    } else {
      json[r'percent_protein'] = null;
    }
    return json;
  }

  /// Returns a new [SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown(
        percentFat: num.parse('${json[r'percent_fat']}'),
        percentCarbs: num.parse('${json[r'percent_carbs']}'),
        percentProtein: num.parse('${json[r'percent_protein']}'),
      );
    }
    return null;
  }

  static List<SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown> mapFromJson(dynamic json) {
    final map = <String, SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown-objects as value to a dart map
  static Map<String, List<SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

