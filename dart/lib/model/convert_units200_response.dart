//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ConvertUnits200Response {
  /// Returns a new [ConvertUnits200Response] instance.
  ConvertUnits200Response({
    this.targetAmount,
    this.targetUnit,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? targetAmount;

  String? targetUnit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConvertUnits200Response &&
    other.targetAmount == targetAmount &&
    other.targetUnit == targetUnit;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (targetAmount == null ? 0 : targetAmount!.hashCode) +
    (targetUnit == null ? 0 : targetUnit!.hashCode);

  @override
  String toString() => 'ConvertUnits200Response[targetAmount=$targetAmount, targetUnit=$targetUnit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.targetAmount != null) {
      json[r'target_amount'] = this.targetAmount;
    } else {
      json[r'target_amount'] = null;
    }
    if (this.targetUnit != null) {
      json[r'target_unit'] = this.targetUnit;
    } else {
      json[r'target_unit'] = null;
    }
    return json;
  }

  /// Returns a new [ConvertUnits200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConvertUnits200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConvertUnits200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConvertUnits200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConvertUnits200Response(
        targetAmount: num.parse('${json[r'target_amount']}'),
        targetUnit: mapValueOfType<String>(json, r'target_unit'),
      );
    }
    return null;
  }

  static List<ConvertUnits200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConvertUnits200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConvertUnits200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConvertUnits200Response> mapFromJson(dynamic json) {
    final map = <String, ConvertUnits200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConvertUnits200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConvertUnits200Response-objects as value to a dart map
  static Map<String, List<ConvertUnits200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConvertUnits200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConvertUnits200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

