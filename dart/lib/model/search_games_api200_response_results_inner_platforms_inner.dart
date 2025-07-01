//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchGamesAPI200ResponseResultsInnerPlatformsInner {
  /// Returns a new [SearchGamesAPI200ResponseResultsInnerPlatformsInner] instance.
  SearchGamesAPI200ResponseResultsInnerPlatformsInner({
    this.name,
    this.value,
  });

  String? name;

  String? value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchGamesAPI200ResponseResultsInnerPlatformsInner &&
    other.name == name &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (value == null ? 0 : value!.hashCode);

  @override
  String toString() => 'SearchGamesAPI200ResponseResultsInnerPlatformsInner[name=$name, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    return json;
  }

  /// Returns a new [SearchGamesAPI200ResponseResultsInnerPlatformsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchGamesAPI200ResponseResultsInnerPlatformsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchGamesAPI200ResponseResultsInnerPlatformsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchGamesAPI200ResponseResultsInnerPlatformsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchGamesAPI200ResponseResultsInnerPlatformsInner(
        name: mapValueOfType<String>(json, r'name'),
        value: mapValueOfType<String>(json, r'value'),
      );
    }
    return null;
  }

  static List<SearchGamesAPI200ResponseResultsInnerPlatformsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchGamesAPI200ResponseResultsInnerPlatformsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchGamesAPI200ResponseResultsInnerPlatformsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchGamesAPI200ResponseResultsInnerPlatformsInner> mapFromJson(dynamic json) {
    final map = <String, SearchGamesAPI200ResponseResultsInnerPlatformsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchGamesAPI200ResponseResultsInnerPlatformsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchGamesAPI200ResponseResultsInnerPlatformsInner-objects as value to a dart map
  static Map<String, List<SearchGamesAPI200ResponseResultsInnerPlatformsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchGamesAPI200ResponseResultsInnerPlatformsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchGamesAPI200ResponseResultsInnerPlatformsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

