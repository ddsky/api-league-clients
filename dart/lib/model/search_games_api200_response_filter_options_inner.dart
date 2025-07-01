//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchGamesAPI200ResponseFilterOptionsInner {
  /// Returns a new [SearchGamesAPI200ResponseFilterOptionsInner] instance.
  SearchGamesAPI200ResponseFilterOptionsInner({
    this.name,
    this.filterType,
    this.key,
    this.values = const [],
    this.filterConnection,
  });

  String? name;

  String? filterType;

  String? key;

  List<SearchGamesAPI200ResponseFilterOptionsInnerValuesInner> values;

  String? filterConnection;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchGamesAPI200ResponseFilterOptionsInner &&
    other.name == name &&
    other.filterType == filterType &&
    other.key == key &&
    _deepEquality.equals(other.values, values) &&
    other.filterConnection == filterConnection;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (filterType == null ? 0 : filterType!.hashCode) +
    (key == null ? 0 : key!.hashCode) +
    (values.hashCode) +
    (filterConnection == null ? 0 : filterConnection!.hashCode);

  @override
  String toString() => 'SearchGamesAPI200ResponseFilterOptionsInner[name=$name, filterType=$filterType, key=$key, values=$values, filterConnection=$filterConnection]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.filterType != null) {
      json[r'filter_type'] = this.filterType;
    } else {
      json[r'filter_type'] = null;
    }
    if (this.key != null) {
      json[r'key'] = this.key;
    } else {
      json[r'key'] = null;
    }
      json[r'values'] = this.values;
    if (this.filterConnection != null) {
      json[r'filter_connection'] = this.filterConnection;
    } else {
      json[r'filter_connection'] = null;
    }
    return json;
  }

  /// Returns a new [SearchGamesAPI200ResponseFilterOptionsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchGamesAPI200ResponseFilterOptionsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchGamesAPI200ResponseFilterOptionsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchGamesAPI200ResponseFilterOptionsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchGamesAPI200ResponseFilterOptionsInner(
        name: mapValueOfType<String>(json, r'name'),
        filterType: mapValueOfType<String>(json, r'filter_type'),
        key: mapValueOfType<String>(json, r'key'),
        values: SearchGamesAPI200ResponseFilterOptionsInnerValuesInner.listFromJson(json[r'values']),
        filterConnection: mapValueOfType<String>(json, r'filter_connection'),
      );
    }
    return null;
  }

  static List<SearchGamesAPI200ResponseFilterOptionsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchGamesAPI200ResponseFilterOptionsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchGamesAPI200ResponseFilterOptionsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchGamesAPI200ResponseFilterOptionsInner> mapFromJson(dynamic json) {
    final map = <String, SearchGamesAPI200ResponseFilterOptionsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchGamesAPI200ResponseFilterOptionsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchGamesAPI200ResponseFilterOptionsInner-objects as value to a dart map
  static Map<String, List<SearchGamesAPI200ResponseFilterOptionsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchGamesAPI200ResponseFilterOptionsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchGamesAPI200ResponseFilterOptionsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

