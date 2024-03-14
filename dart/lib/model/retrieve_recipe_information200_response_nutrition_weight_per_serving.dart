//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RetrieveRecipeInformation200ResponseNutritionWeightPerServing {
  /// Returns a new [RetrieveRecipeInformation200ResponseNutritionWeightPerServing] instance.
  RetrieveRecipeInformation200ResponseNutritionWeightPerServing({
    this.amount,
    this.unit,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? amount;

  String? unit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RetrieveRecipeInformation200ResponseNutritionWeightPerServing &&
    other.amount == amount &&
    other.unit == unit;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (amount == null ? 0 : amount!.hashCode) +
    (unit == null ? 0 : unit!.hashCode);

  @override
  String toString() => 'RetrieveRecipeInformation200ResponseNutritionWeightPerServing[amount=$amount, unit=$unit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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

  /// Returns a new [RetrieveRecipeInformation200ResponseNutritionWeightPerServing] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RetrieveRecipeInformation200ResponseNutritionWeightPerServing? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RetrieveRecipeInformation200ResponseNutritionWeightPerServing[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RetrieveRecipeInformation200ResponseNutritionWeightPerServing[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RetrieveRecipeInformation200ResponseNutritionWeightPerServing(
        amount: mapValueOfType<int>(json, r'amount'),
        unit: mapValueOfType<String>(json, r'unit'),
      );
    }
    return null;
  }

  static List<RetrieveRecipeInformation200ResponseNutritionWeightPerServing> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RetrieveRecipeInformation200ResponseNutritionWeightPerServing>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RetrieveRecipeInformation200ResponseNutritionWeightPerServing.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RetrieveRecipeInformation200ResponseNutritionWeightPerServing> mapFromJson(dynamic json) {
    final map = <String, RetrieveRecipeInformation200ResponseNutritionWeightPerServing>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RetrieveRecipeInformation200ResponseNutritionWeightPerServing.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RetrieveRecipeInformation200ResponseNutritionWeightPerServing-objects as value to a dart map
  static Map<String, List<RetrieveRecipeInformation200ResponseNutritionWeightPerServing>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RetrieveRecipeInformation200ResponseNutritionWeightPerServing>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RetrieveRecipeInformation200ResponseNutritionWeightPerServing.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

