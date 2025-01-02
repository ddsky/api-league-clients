//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchRecipesAPI200ResponseRecipesInner {
  /// Returns a new [SearchRecipesAPI200ResponseRecipesInner] instance.
  SearchRecipesAPI200ResponseRecipesInner({
    this.images = const [],
    this.nutrition,
    this.id,
    this.title,
  });

  List<String> images;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SearchRecipesAPI200ResponseRecipesInnerNutrition? nutrition;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  String? title;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchRecipesAPI200ResponseRecipesInner &&
    _deepEquality.equals(other.images, images) &&
    other.nutrition == nutrition &&
    other.id == id &&
    other.title == title;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (images.hashCode) +
    (nutrition == null ? 0 : nutrition!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (title == null ? 0 : title!.hashCode);

  @override
  String toString() => 'SearchRecipesAPI200ResponseRecipesInner[images=$images, nutrition=$nutrition, id=$id, title=$title]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'images'] = this.images;
    if (this.nutrition != null) {
      json[r'nutrition'] = this.nutrition;
    } else {
      json[r'nutrition'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    return json;
  }

  /// Returns a new [SearchRecipesAPI200ResponseRecipesInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchRecipesAPI200ResponseRecipesInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchRecipesAPI200ResponseRecipesInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchRecipesAPI200ResponseRecipesInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchRecipesAPI200ResponseRecipesInner(
        images: json[r'images'] is Iterable
            ? (json[r'images'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        nutrition: SearchRecipesAPI200ResponseRecipesInnerNutrition.fromJson(json[r'nutrition']),
        id: mapValueOfType<int>(json, r'id'),
        title: mapValueOfType<String>(json, r'title'),
      );
    }
    return null;
  }

  static List<SearchRecipesAPI200ResponseRecipesInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchRecipesAPI200ResponseRecipesInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchRecipesAPI200ResponseRecipesInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchRecipesAPI200ResponseRecipesInner> mapFromJson(dynamic json) {
    final map = <String, SearchRecipesAPI200ResponseRecipesInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchRecipesAPI200ResponseRecipesInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchRecipesAPI200ResponseRecipesInner-objects as value to a dart map
  static Map<String, List<SearchRecipesAPI200ResponseRecipesInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchRecipesAPI200ResponseRecipesInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchRecipesAPI200ResponseRecipesInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

