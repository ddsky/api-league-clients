//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchDrinks200Response {
  /// Returns a new [SearchDrinks200Response] instance.
  SearchDrinks200Response({
    this.offset,
    this.number,
    this.drinks = const [],
    this.totalResults,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? offset;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? number;

  List<SearchDrinks200ResponseDrinksInner> drinks;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalResults;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchDrinks200Response &&
    other.offset == offset &&
    other.number == number &&
    _deepEquality.equals(other.drinks, drinks) &&
    other.totalResults == totalResults;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (offset == null ? 0 : offset!.hashCode) +
    (number == null ? 0 : number!.hashCode) +
    (drinks.hashCode) +
    (totalResults == null ? 0 : totalResults!.hashCode);

  @override
  String toString() => 'SearchDrinks200Response[offset=$offset, number=$number, drinks=$drinks, totalResults=$totalResults]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.offset != null) {
      json[r'offset'] = this.offset;
    } else {
      json[r'offset'] = null;
    }
    if (this.number != null) {
      json[r'number'] = this.number;
    } else {
      json[r'number'] = null;
    }
      json[r'drinks'] = this.drinks;
    if (this.totalResults != null) {
      json[r'total_results'] = this.totalResults;
    } else {
      json[r'total_results'] = null;
    }
    return json;
  }

  /// Returns a new [SearchDrinks200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchDrinks200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchDrinks200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchDrinks200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchDrinks200Response(
        offset: mapValueOfType<int>(json, r'offset'),
        number: mapValueOfType<int>(json, r'number'),
        drinks: SearchDrinks200ResponseDrinksInner.listFromJson(json[r'drinks']),
        totalResults: mapValueOfType<int>(json, r'total_results'),
      );
    }
    return null;
  }

  static List<SearchDrinks200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchDrinks200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchDrinks200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchDrinks200Response> mapFromJson(dynamic json) {
    final map = <String, SearchDrinks200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchDrinks200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchDrinks200Response-objects as value to a dart map
  static Map<String, List<SearchDrinks200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchDrinks200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchDrinks200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

