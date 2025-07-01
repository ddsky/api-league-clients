//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchGamesAPI200ResponseFilterOptionsInnerValuesInner {
  /// Returns a new [SearchGamesAPI200ResponseFilterOptionsInnerValuesInner] instance.
  SearchGamesAPI200ResponseFilterOptionsInnerValuesInner({
    this.name,
    this.count,
    this.key,
  });

  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? count;

  String? key;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchGamesAPI200ResponseFilterOptionsInnerValuesInner &&
    other.name == name &&
    other.count == count &&
    other.key == key;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (count == null ? 0 : count!.hashCode) +
    (key == null ? 0 : key!.hashCode);

  @override
  String toString() => 'SearchGamesAPI200ResponseFilterOptionsInnerValuesInner[name=$name, count=$count, key=$key]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.count != null) {
      json[r'count'] = this.count;
    } else {
      json[r'count'] = null;
    }
    if (this.key != null) {
      json[r'key'] = this.key;
    } else {
      json[r'key'] = null;
    }
    return json;
  }

  /// Returns a new [SearchGamesAPI200ResponseFilterOptionsInnerValuesInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchGamesAPI200ResponseFilterOptionsInnerValuesInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchGamesAPI200ResponseFilterOptionsInnerValuesInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchGamesAPI200ResponseFilterOptionsInnerValuesInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchGamesAPI200ResponseFilterOptionsInnerValuesInner(
        name: mapValueOfType<String>(json, r'name'),
        count: mapValueOfType<int>(json, r'count'),
        key: mapValueOfType<String>(json, r'key'),
      );
    }
    return null;
  }

  static List<SearchGamesAPI200ResponseFilterOptionsInnerValuesInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchGamesAPI200ResponseFilterOptionsInnerValuesInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchGamesAPI200ResponseFilterOptionsInnerValuesInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchGamesAPI200ResponseFilterOptionsInnerValuesInner> mapFromJson(dynamic json) {
    final map = <String, SearchGamesAPI200ResponseFilterOptionsInnerValuesInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchGamesAPI200ResponseFilterOptionsInnerValuesInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchGamesAPI200ResponseFilterOptionsInnerValuesInner-objects as value to a dart map
  static Map<String, List<SearchGamesAPI200ResponseFilterOptionsInnerValuesInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchGamesAPI200ResponseFilterOptionsInnerValuesInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchGamesAPI200ResponseFilterOptionsInnerValuesInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

