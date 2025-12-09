//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RetrieveRecipeInformationAPI200ResponseTaste {
  /// Returns a new [RetrieveRecipeInformationAPI200ResponseTaste] instance.
  RetrieveRecipeInformationAPI200ResponseTaste({
    this.sweetness,
    this.saltiness,
    this.sourness,
    this.bitterness,
    this.savoriness,
    this.fattiness,
    this.spiciness,
  });

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
  int? saltiness;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? sourness;

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
  num? fattiness;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? spiciness;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RetrieveRecipeInformationAPI200ResponseTaste &&
    other.sweetness == sweetness &&
    other.saltiness == saltiness &&
    other.sourness == sourness &&
    other.bitterness == bitterness &&
    other.savoriness == savoriness &&
    other.fattiness == fattiness &&
    other.spiciness == spiciness;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sweetness == null ? 0 : sweetness!.hashCode) +
    (saltiness == null ? 0 : saltiness!.hashCode) +
    (sourness == null ? 0 : sourness!.hashCode) +
    (bitterness == null ? 0 : bitterness!.hashCode) +
    (savoriness == null ? 0 : savoriness!.hashCode) +
    (fattiness == null ? 0 : fattiness!.hashCode) +
    (spiciness == null ? 0 : spiciness!.hashCode);

  @override
  String toString() => 'RetrieveRecipeInformationAPI200ResponseTaste[sweetness=$sweetness, saltiness=$saltiness, sourness=$sourness, bitterness=$bitterness, savoriness=$savoriness, fattiness=$fattiness, spiciness=$spiciness]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.sweetness != null) {
      json[r'sweetness'] = this.sweetness;
    } else {
      json[r'sweetness'] = null;
    }
    if (this.saltiness != null) {
      json[r'saltiness'] = this.saltiness;
    } else {
      json[r'saltiness'] = null;
    }
    if (this.sourness != null) {
      json[r'sourness'] = this.sourness;
    } else {
      json[r'sourness'] = null;
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
    return json;
  }

  /// Returns a new [RetrieveRecipeInformationAPI200ResponseTaste] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RetrieveRecipeInformationAPI200ResponseTaste? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RetrieveRecipeInformationAPI200ResponseTaste[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RetrieveRecipeInformationAPI200ResponseTaste[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RetrieveRecipeInformationAPI200ResponseTaste(
        sweetness: num.parse('${json[r'sweetness']}'),
        saltiness: mapValueOfType<int>(json, r'saltiness'),
        sourness: num.parse('${json[r'sourness']}'),
        bitterness: num.parse('${json[r'bitterness']}'),
        savoriness: num.parse('${json[r'savoriness']}'),
        fattiness: num.parse('${json[r'fattiness']}'),
        spiciness: mapValueOfType<int>(json, r'spiciness'),
      );
    }
    return null;
  }

  static List<RetrieveRecipeInformationAPI200ResponseTaste> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RetrieveRecipeInformationAPI200ResponseTaste>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RetrieveRecipeInformationAPI200ResponseTaste.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RetrieveRecipeInformationAPI200ResponseTaste> mapFromJson(dynamic json) {
    final map = <String, RetrieveRecipeInformationAPI200ResponseTaste>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RetrieveRecipeInformationAPI200ResponseTaste.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RetrieveRecipeInformationAPI200ResponseTaste-objects as value to a dart map
  static Map<String, List<RetrieveRecipeInformationAPI200ResponseTaste>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RetrieveRecipeInformationAPI200ResponseTaste>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RetrieveRecipeInformationAPI200ResponseTaste.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

