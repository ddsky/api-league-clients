//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures {
  /// Returns a new [SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures] instance.
  SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures({
    this.metric,
    this.us,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric? metric;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs? us;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures &&
    other.metric == metric &&
    other.us == us;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (metric == null ? 0 : metric!.hashCode) +
    (us == null ? 0 : us!.hashCode);

  @override
  String toString() => 'SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures[metric=$metric, us=$us]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.metric != null) {
      json[r'metric'] = this.metric;
    } else {
      json[r'metric'] = null;
    }
    if (this.us != null) {
      json[r'us'] = this.us;
    } else {
      json[r'us'] = null;
    }
    return json;
  }

  /// Returns a new [SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures(
        metric: SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric.fromJson(json[r'metric']),
        us: SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs.fromJson(json[r'us']),
      );
    }
    return null;
  }

  static List<SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures> mapFromJson(dynamic json) {
    final map = <String, SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures-objects as value to a dart map
  static Map<String, List<SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

