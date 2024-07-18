//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric {
  /// Returns a new [SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric] instance.
  SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric({
    this.unitShort,
    this.amount,
    this.unitLong,
  });

  String? unitShort;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? amount;

  String? unitLong;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric &&
    other.unitShort == unitShort &&
    other.amount == amount &&
    other.unitLong == unitLong;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (unitShort == null ? 0 : unitShort!.hashCode) +
    (amount == null ? 0 : amount!.hashCode) +
    (unitLong == null ? 0 : unitLong!.hashCode);

  @override
  String toString() => 'SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric[unitShort=$unitShort, amount=$amount, unitLong=$unitLong]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.unitShort != null) {
      json[r'unit_short'] = this.unitShort;
    } else {
      json[r'unit_short'] = null;
    }
    if (this.amount != null) {
      json[r'amount'] = this.amount;
    } else {
      json[r'amount'] = null;
    }
    if (this.unitLong != null) {
      json[r'unit_long'] = this.unitLong;
    } else {
      json[r'unit_long'] = null;
    }
    return json;
  }

  /// Returns a new [SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric(
        unitShort: mapValueOfType<String>(json, r'unit_short'),
        amount: num.parse('${json[r'amount']}'),
        unitLong: mapValueOfType<String>(json, r'unit_long'),
      );
    }
    return null;
  }

  static List<SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric> mapFromJson(dynamic json) {
    final map = <String, SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric-objects as value to a dart map
  static Map<String, List<SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

