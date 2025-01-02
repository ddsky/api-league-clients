//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchJokesAPI200Response {
  /// Returns a new [SearchJokesAPI200Response] instance.
  SearchJokesAPI200Response({
    this.jokes = const [],
    this.available,
  });

  List<SearchJokesAPI200ResponseJokesInner> jokes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? available;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchJokesAPI200Response &&
    _deepEquality.equals(other.jokes, jokes) &&
    other.available == available;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (jokes.hashCode) +
    (available == null ? 0 : available!.hashCode);

  @override
  String toString() => 'SearchJokesAPI200Response[jokes=$jokes, available=$available]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'jokes'] = this.jokes;
    if (this.available != null) {
      json[r'available'] = this.available;
    } else {
      json[r'available'] = null;
    }
    return json;
  }

  /// Returns a new [SearchJokesAPI200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchJokesAPI200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchJokesAPI200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchJokesAPI200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchJokesAPI200Response(
        jokes: SearchJokesAPI200ResponseJokesInner.listFromJson(json[r'jokes']),
        available: mapValueOfType<int>(json, r'available'),
      );
    }
    return null;
  }

  static List<SearchJokesAPI200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchJokesAPI200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchJokesAPI200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchJokesAPI200Response> mapFromJson(dynamic json) {
    final map = <String, SearchJokesAPI200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchJokesAPI200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchJokesAPI200Response-objects as value to a dart map
  static Map<String, List<SearchJokesAPI200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchJokesAPI200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchJokesAPI200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

