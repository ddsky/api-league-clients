//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner {
  /// Returns a new [SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner] instance.
  SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner({
    this.name,
    this.image,
    this.id,
  });

  String? name;

  String? image;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner &&
    other.name == name &&
    other.image == image &&
    other.id == id;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (id == null ? 0 : id!.hashCode);

  @override
  String toString() => 'SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner[name=$name, image=$image, id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    return json;
  }

  /// Returns a new [SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner(
        name: mapValueOfType<String>(json, r'name'),
        image: mapValueOfType<String>(json, r'image'),
        id: mapValueOfType<int>(json, r'id'),
      );
    }
    return null;
  }

  static List<SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner> mapFromJson(dynamic json) {
    final map = <String, SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner-objects as value to a dart map
  static Map<String, List<SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

