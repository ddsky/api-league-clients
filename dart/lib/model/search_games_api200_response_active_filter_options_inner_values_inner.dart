//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchGamesAPI200ResponseActiveFilterOptionsInnerValuesInner {
  /// Returns a new [SearchGamesAPI200ResponseActiveFilterOptionsInnerValuesInner] instance.
  SearchGamesAPI200ResponseActiveFilterOptionsInnerValuesInner({
    this.match,
    this.value,
  });

  String? match;

  String? value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchGamesAPI200ResponseActiveFilterOptionsInnerValuesInner &&
    other.match == match &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (match == null ? 0 : match!.hashCode) +
    (value == null ? 0 : value!.hashCode);

  @override
  String toString() => 'SearchGamesAPI200ResponseActiveFilterOptionsInnerValuesInner[match=$match, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.match != null) {
      json[r'match'] = this.match;
    } else {
      json[r'match'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    return json;
  }

  /// Returns a new [SearchGamesAPI200ResponseActiveFilterOptionsInnerValuesInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchGamesAPI200ResponseActiveFilterOptionsInnerValuesInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchGamesAPI200ResponseActiveFilterOptionsInnerValuesInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchGamesAPI200ResponseActiveFilterOptionsInnerValuesInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchGamesAPI200ResponseActiveFilterOptionsInnerValuesInner(
        match: mapValueOfType<String>(json, r'match'),
        value: mapValueOfType<String>(json, r'value'),
      );
    }
    return null;
  }

  static List<SearchGamesAPI200ResponseActiveFilterOptionsInnerValuesInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchGamesAPI200ResponseActiveFilterOptionsInnerValuesInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchGamesAPI200ResponseActiveFilterOptionsInnerValuesInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchGamesAPI200ResponseActiveFilterOptionsInnerValuesInner> mapFromJson(dynamic json) {
    final map = <String, SearchGamesAPI200ResponseActiveFilterOptionsInnerValuesInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchGamesAPI200ResponseActiveFilterOptionsInnerValuesInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchGamesAPI200ResponseActiveFilterOptionsInnerValuesInner-objects as value to a dart map
  static Map<String, List<SearchGamesAPI200ResponseActiveFilterOptionsInnerValuesInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchGamesAPI200ResponseActiveFilterOptionsInnerValuesInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchGamesAPI200ResponseActiveFilterOptionsInnerValuesInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

