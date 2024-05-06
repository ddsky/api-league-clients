//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ComputeNutrition200ResponseIngredientBreakdownInner {
  /// Returns a new [ComputeNutrition200ResponseIngredientBreakdownInner] instance.
  ComputeNutrition200ResponseIngredientBreakdownInner({
    this.name,
    this.amount,
    this.unit,
    this.id,
    this.nutrients = const [],
  });

  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? amount;

  String? unit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  List<ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner> nutrients;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ComputeNutrition200ResponseIngredientBreakdownInner &&
    other.name == name &&
    other.amount == amount &&
    other.unit == unit &&
    other.id == id &&
    _deepEquality.equals(other.nutrients, nutrients);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (amount == null ? 0 : amount!.hashCode) +
    (unit == null ? 0 : unit!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (nutrients.hashCode);

  @override
  String toString() => 'ComputeNutrition200ResponseIngredientBreakdownInner[name=$name, amount=$amount, unit=$unit, id=$id, nutrients=$nutrients]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
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
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'nutrients'] = this.nutrients;
    return json;
  }

  /// Returns a new [ComputeNutrition200ResponseIngredientBreakdownInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ComputeNutrition200ResponseIngredientBreakdownInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ComputeNutrition200ResponseIngredientBreakdownInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ComputeNutrition200ResponseIngredientBreakdownInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ComputeNutrition200ResponseIngredientBreakdownInner(
        name: mapValueOfType<String>(json, r'name'),
        amount: mapValueOfType<int>(json, r'amount'),
        unit: mapValueOfType<String>(json, r'unit'),
        id: mapValueOfType<int>(json, r'id'),
        nutrients: ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner.listFromJson(json[r'nutrients']),
      );
    }
    return null;
  }

  static List<ComputeNutrition200ResponseIngredientBreakdownInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ComputeNutrition200ResponseIngredientBreakdownInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ComputeNutrition200ResponseIngredientBreakdownInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ComputeNutrition200ResponseIngredientBreakdownInner> mapFromJson(dynamic json) {
    final map = <String, ComputeNutrition200ResponseIngredientBreakdownInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ComputeNutrition200ResponseIngredientBreakdownInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ComputeNutrition200ResponseIngredientBreakdownInner-objects as value to a dart map
  static Map<String, List<ComputeNutrition200ResponseIngredientBreakdownInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ComputeNutrition200ResponseIngredientBreakdownInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ComputeNutrition200ResponseIngredientBreakdownInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

