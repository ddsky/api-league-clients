//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchJokesAPI200ResponseJokesInner {
  /// Returns a new [SearchJokesAPI200ResponseJokesInner] instance.
  SearchJokesAPI200ResponseJokesInner({
    this.joke,
  });

  String? joke;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchJokesAPI200ResponseJokesInner &&
    other.joke == joke;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (joke == null ? 0 : joke!.hashCode);

  @override
  String toString() => 'SearchJokesAPI200ResponseJokesInner[joke=$joke]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.joke != null) {
      json[r'joke'] = this.joke;
    } else {
      json[r'joke'] = null;
    }
    return json;
  }

  /// Returns a new [SearchJokesAPI200ResponseJokesInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchJokesAPI200ResponseJokesInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchJokesAPI200ResponseJokesInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchJokesAPI200ResponseJokesInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchJokesAPI200ResponseJokesInner(
        joke: mapValueOfType<String>(json, r'joke'),
      );
    }
    return null;
  }

  static List<SearchJokesAPI200ResponseJokesInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchJokesAPI200ResponseJokesInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchJokesAPI200ResponseJokesInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchJokesAPI200ResponseJokesInner> mapFromJson(dynamic json) {
    final map = <String, SearchJokesAPI200ResponseJokesInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchJokesAPI200ResponseJokesInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchJokesAPI200ResponseJokesInner-objects as value to a dart map
  static Map<String, List<SearchJokesAPI200ResponseJokesInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchJokesAPI200ResponseJokesInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchJokesAPI200ResponseJokesInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

