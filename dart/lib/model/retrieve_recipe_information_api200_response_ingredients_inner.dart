//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RetrieveRecipeInformationAPI200ResponseIngredientsInner {
  /// Returns a new [RetrieveRecipeInformationAPI200ResponseIngredientsInner] instance.
  RetrieveRecipeInformationAPI200ResponseIngredientsInner({
    this.id,
    this.aisle,
    this.image,
    this.consistency,
    this.name,
    this.original,
    this.amount,
    this.unit,
    this.meta = const [],
    this.measures,
    this.originalName,
    this.nameClean,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  String? aisle;

  String? image;

  String? consistency;

  String? name;

  String? original;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? amount;

  String? unit;

  List<String> meta;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RetrieveRecipeInformationAPI200ResponseIngredientsInnerMeasures? measures;

  String? originalName;

  String? nameClean;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RetrieveRecipeInformationAPI200ResponseIngredientsInner &&
    other.id == id &&
    other.aisle == aisle &&
    other.image == image &&
    other.consistency == consistency &&
    other.name == name &&
    other.original == original &&
    other.amount == amount &&
    other.unit == unit &&
    _deepEquality.equals(other.meta, meta) &&
    other.measures == measures &&
    other.originalName == originalName &&
    other.nameClean == nameClean;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (aisle == null ? 0 : aisle!.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (consistency == null ? 0 : consistency!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (original == null ? 0 : original!.hashCode) +
    (amount == null ? 0 : amount!.hashCode) +
    (unit == null ? 0 : unit!.hashCode) +
    (meta.hashCode) +
    (measures == null ? 0 : measures!.hashCode) +
    (originalName == null ? 0 : originalName!.hashCode) +
    (nameClean == null ? 0 : nameClean!.hashCode);

  @override
  String toString() => 'RetrieveRecipeInformationAPI200ResponseIngredientsInner[id=$id, aisle=$aisle, image=$image, consistency=$consistency, name=$name, original=$original, amount=$amount, unit=$unit, meta=$meta, measures=$measures, originalName=$originalName, nameClean=$nameClean]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.aisle != null) {
      json[r'aisle'] = this.aisle;
    } else {
      json[r'aisle'] = null;
    }
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    if (this.consistency != null) {
      json[r'consistency'] = this.consistency;
    } else {
      json[r'consistency'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.original != null) {
      json[r'original'] = this.original;
    } else {
      json[r'original'] = null;
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
      json[r'meta'] = this.meta;
    if (this.measures != null) {
      json[r'measures'] = this.measures;
    } else {
      json[r'measures'] = null;
    }
    if (this.originalName != null) {
      json[r'original_name'] = this.originalName;
    } else {
      json[r'original_name'] = null;
    }
    if (this.nameClean != null) {
      json[r'name_clean'] = this.nameClean;
    } else {
      json[r'name_clean'] = null;
    }
    return json;
  }

  /// Returns a new [RetrieveRecipeInformationAPI200ResponseIngredientsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RetrieveRecipeInformationAPI200ResponseIngredientsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RetrieveRecipeInformationAPI200ResponseIngredientsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RetrieveRecipeInformationAPI200ResponseIngredientsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RetrieveRecipeInformationAPI200ResponseIngredientsInner(
        id: mapValueOfType<int>(json, r'id'),
        aisle: mapValueOfType<String>(json, r'aisle'),
        image: mapValueOfType<String>(json, r'image'),
        consistency: mapValueOfType<String>(json, r'consistency'),
        name: mapValueOfType<String>(json, r'name'),
        original: mapValueOfType<String>(json, r'original'),
        amount: num.parse('${json[r'amount']}'),
        unit: mapValueOfType<String>(json, r'unit'),
        meta: json[r'meta'] is Iterable
            ? (json[r'meta'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        measures: RetrieveRecipeInformationAPI200ResponseIngredientsInnerMeasures.fromJson(json[r'measures']),
        originalName: mapValueOfType<String>(json, r'original_name'),
        nameClean: mapValueOfType<String>(json, r'name_clean'),
      );
    }
    return null;
  }

  static List<RetrieveRecipeInformationAPI200ResponseIngredientsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RetrieveRecipeInformationAPI200ResponseIngredientsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RetrieveRecipeInformationAPI200ResponseIngredientsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RetrieveRecipeInformationAPI200ResponseIngredientsInner> mapFromJson(dynamic json) {
    final map = <String, RetrieveRecipeInformationAPI200ResponseIngredientsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RetrieveRecipeInformationAPI200ResponseIngredientsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RetrieveRecipeInformationAPI200ResponseIngredientsInner-objects as value to a dart map
  static Map<String, List<RetrieveRecipeInformationAPI200ResponseIngredientsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RetrieveRecipeInformationAPI200ResponseIngredientsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RetrieveRecipeInformationAPI200ResponseIngredientsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

