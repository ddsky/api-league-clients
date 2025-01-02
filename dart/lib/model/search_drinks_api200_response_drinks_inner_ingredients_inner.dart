//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchDrinksAPI200ResponseDrinksInnerIngredientsInner {
  /// Returns a new [SearchDrinksAPI200ResponseDrinksInnerIngredientsInner] instance.
  SearchDrinksAPI200ResponseDrinksInnerIngredientsInner({
    this.image,
    this.nameClean,
    this.amount,
    this.unit,
    this.measures,
    this.original,
    this.meta = const [],
    this.originalName,
    this.name,
    this.id,
    this.aisle,
    this.consistency,
  });

  String? image;

  String? nameClean;

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
  SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasures? measures;

  String? original;

  List<String> meta;

  String? originalName;

  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  String? aisle;

  String? consistency;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchDrinksAPI200ResponseDrinksInnerIngredientsInner &&
    other.image == image &&
    other.nameClean == nameClean &&
    other.amount == amount &&
    other.unit == unit &&
    other.measures == measures &&
    other.original == original &&
    _deepEquality.equals(other.meta, meta) &&
    other.originalName == originalName &&
    other.name == name &&
    other.id == id &&
    other.aisle == aisle &&
    other.consistency == consistency;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (image == null ? 0 : image!.hashCode) +
    (nameClean == null ? 0 : nameClean!.hashCode) +
    (amount == null ? 0 : amount!.hashCode) +
    (unit == null ? 0 : unit!.hashCode) +
    (measures == null ? 0 : measures!.hashCode) +
    (original == null ? 0 : original!.hashCode) +
    (meta.hashCode) +
    (originalName == null ? 0 : originalName!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (aisle == null ? 0 : aisle!.hashCode) +
    (consistency == null ? 0 : consistency!.hashCode);

  @override
  String toString() => 'SearchDrinksAPI200ResponseDrinksInnerIngredientsInner[image=$image, nameClean=$nameClean, amount=$amount, unit=$unit, measures=$measures, original=$original, meta=$meta, originalName=$originalName, name=$name, id=$id, aisle=$aisle, consistency=$consistency]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    if (this.nameClean != null) {
      json[r'name_clean'] = this.nameClean;
    } else {
      json[r'name_clean'] = null;
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
    if (this.measures != null) {
      json[r'measures'] = this.measures;
    } else {
      json[r'measures'] = null;
    }
    if (this.original != null) {
      json[r'original'] = this.original;
    } else {
      json[r'original'] = null;
    }
      json[r'meta'] = this.meta;
    if (this.originalName != null) {
      json[r'original_name'] = this.originalName;
    } else {
      json[r'original_name'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
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
    if (this.consistency != null) {
      json[r'consistency'] = this.consistency;
    } else {
      json[r'consistency'] = null;
    }
    return json;
  }

  /// Returns a new [SearchDrinksAPI200ResponseDrinksInnerIngredientsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchDrinksAPI200ResponseDrinksInnerIngredientsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchDrinksAPI200ResponseDrinksInnerIngredientsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchDrinksAPI200ResponseDrinksInnerIngredientsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchDrinksAPI200ResponseDrinksInnerIngredientsInner(
        image: mapValueOfType<String>(json, r'image'),
        nameClean: mapValueOfType<String>(json, r'name_clean'),
        amount: mapValueOfType<int>(json, r'amount'),
        unit: mapValueOfType<String>(json, r'unit'),
        measures: SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasures.fromJson(json[r'measures']),
        original: mapValueOfType<String>(json, r'original'),
        meta: json[r'meta'] is Iterable
            ? (json[r'meta'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        originalName: mapValueOfType<String>(json, r'original_name'),
        name: mapValueOfType<String>(json, r'name'),
        id: mapValueOfType<int>(json, r'id'),
        aisle: mapValueOfType<String>(json, r'aisle'),
        consistency: mapValueOfType<String>(json, r'consistency'),
      );
    }
    return null;
  }

  static List<SearchDrinksAPI200ResponseDrinksInnerIngredientsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchDrinksAPI200ResponseDrinksInnerIngredientsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchDrinksAPI200ResponseDrinksInnerIngredientsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchDrinksAPI200ResponseDrinksInnerIngredientsInner> mapFromJson(dynamic json) {
    final map = <String, SearchDrinksAPI200ResponseDrinksInnerIngredientsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchDrinksAPI200ResponseDrinksInnerIngredientsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchDrinksAPI200ResponseDrinksInnerIngredientsInner-objects as value to a dart map
  static Map<String, List<SearchDrinksAPI200ResponseDrinksInnerIngredientsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchDrinksAPI200ResponseDrinksInnerIngredientsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchDrinksAPI200ResponseDrinksInnerIngredientsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

