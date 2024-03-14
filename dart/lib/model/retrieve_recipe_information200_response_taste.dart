//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RetrieveRecipeInformation200ResponseTaste {
  /// Returns a new [RetrieveRecipeInformation200ResponseTaste] instance.
  RetrieveRecipeInformation200ResponseTaste({
    this.fattiness,
    this.spiciness,
    this.saltiness,
    this.bitterness,
    this.savoriness,
    this.sweetness,
    this.sourness,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? fattiness;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? spiciness;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? saltiness;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? bitterness;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? savoriness;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? sweetness;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? sourness;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RetrieveRecipeInformation200ResponseTaste &&
    other.fattiness == fattiness &&
    other.spiciness == spiciness &&
    other.saltiness == saltiness &&
    other.bitterness == bitterness &&
    other.savoriness == savoriness &&
    other.sweetness == sweetness &&
    other.sourness == sourness;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (fattiness == null ? 0 : fattiness!.hashCode) +
    (spiciness == null ? 0 : spiciness!.hashCode) +
    (saltiness == null ? 0 : saltiness!.hashCode) +
    (bitterness == null ? 0 : bitterness!.hashCode) +
    (savoriness == null ? 0 : savoriness!.hashCode) +
    (sweetness == null ? 0 : sweetness!.hashCode) +
    (sourness == null ? 0 : sourness!.hashCode);

  @override
  String toString() => 'RetrieveRecipeInformation200ResponseTaste[fattiness=$fattiness, spiciness=$spiciness, saltiness=$saltiness, bitterness=$bitterness, savoriness=$savoriness, sweetness=$sweetness, sourness=$sourness]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.fattiness != null) {
      json[r'fattiness'] = this.fattiness;
    } else {
      json[r'fattiness'] = null;
    }
    if (this.spiciness != null) {
      json[r'spiciness'] = this.spiciness;
    } else {
      json[r'spiciness'] = null;
    }
    if (this.saltiness != null) {
      json[r'saltiness'] = this.saltiness;
    } else {
      json[r'saltiness'] = null;
    }
    if (this.bitterness != null) {
      json[r'bitterness'] = this.bitterness;
    } else {
      json[r'bitterness'] = null;
    }
    if (this.savoriness != null) {
      json[r'savoriness'] = this.savoriness;
    } else {
      json[r'savoriness'] = null;
    }
    if (this.sweetness != null) {
      json[r'sweetness'] = this.sweetness;
    } else {
      json[r'sweetness'] = null;
    }
    if (this.sourness != null) {
      json[r'sourness'] = this.sourness;
    } else {
      json[r'sourness'] = null;
    }
    return json;
  }

  /// Returns a new [RetrieveRecipeInformation200ResponseTaste] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RetrieveRecipeInformation200ResponseTaste? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RetrieveRecipeInformation200ResponseTaste[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RetrieveRecipeInformation200ResponseTaste[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RetrieveRecipeInformation200ResponseTaste(
        fattiness: num.parse('${json[r'fattiness']}'),
        spiciness: mapValueOfType<int>(json, r'spiciness'),
        saltiness: mapValueOfType<int>(json, r'saltiness'),
        bitterness: num.parse('${json[r'bitterness']}'),
        savoriness: num.parse('${json[r'savoriness']}'),
        sweetness: num.parse('${json[r'sweetness']}'),
        sourness: num.parse('${json[r'sourness']}'),
      );
    }
    return null;
  }

  static List<RetrieveRecipeInformation200ResponseTaste> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RetrieveRecipeInformation200ResponseTaste>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RetrieveRecipeInformation200ResponseTaste.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RetrieveRecipeInformation200ResponseTaste> mapFromJson(dynamic json) {
    final map = <String, RetrieveRecipeInformation200ResponseTaste>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RetrieveRecipeInformation200ResponseTaste.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RetrieveRecipeInformation200ResponseTaste-objects as value to a dart map
  static Map<String, List<RetrieveRecipeInformation200ResponseTaste>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RetrieveRecipeInformation200ResponseTaste>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RetrieveRecipeInformation200ResponseTaste.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

