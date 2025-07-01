//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchGamesAPI200ResponseActiveFilterOptionsInner {
  /// Returns a new [SearchGamesAPI200ResponseActiveFilterOptionsInner] instance.
  SearchGamesAPI200ResponseActiveFilterOptionsInner({
    this.key,
    this.connection,
    this.values = const [],
  });

  String? key;

  String? connection;

  List<SearchGamesAPI200ResponseActiveFilterOptionsInnerValuesInner> values;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchGamesAPI200ResponseActiveFilterOptionsInner &&
    other.key == key &&
    other.connection == connection &&
    _deepEquality.equals(other.values, values);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (key == null ? 0 : key!.hashCode) +
    (connection == null ? 0 : connection!.hashCode) +
    (values.hashCode);

  @override
  String toString() => 'SearchGamesAPI200ResponseActiveFilterOptionsInner[key=$key, connection=$connection, values=$values]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.key != null) {
      json[r'key'] = this.key;
    } else {
      json[r'key'] = null;
    }
    if (this.connection != null) {
      json[r'connection'] = this.connection;
    } else {
      json[r'connection'] = null;
    }
      json[r'values'] = this.values;
    return json;
  }

  /// Returns a new [SearchGamesAPI200ResponseActiveFilterOptionsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchGamesAPI200ResponseActiveFilterOptionsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchGamesAPI200ResponseActiveFilterOptionsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchGamesAPI200ResponseActiveFilterOptionsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchGamesAPI200ResponseActiveFilterOptionsInner(
        key: mapValueOfType<String>(json, r'key'),
        connection: mapValueOfType<String>(json, r'connection'),
        values: SearchGamesAPI200ResponseActiveFilterOptionsInnerValuesInner.listFromJson(json[r'values']),
      );
    }
    return null;
  }

  static List<SearchGamesAPI200ResponseActiveFilterOptionsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchGamesAPI200ResponseActiveFilterOptionsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchGamesAPI200ResponseActiveFilterOptionsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchGamesAPI200ResponseActiveFilterOptionsInner> mapFromJson(dynamic json) {
    final map = <String, SearchGamesAPI200ResponseActiveFilterOptionsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchGamesAPI200ResponseActiveFilterOptionsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchGamesAPI200ResponseActiveFilterOptionsInner-objects as value to a dart map
  static Map<String, List<SearchGamesAPI200ResponseActiveFilterOptionsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchGamesAPI200ResponseActiveFilterOptionsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchGamesAPI200ResponseActiveFilterOptionsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

