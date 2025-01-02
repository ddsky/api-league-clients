//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchWebAPI200Response {
  /// Returns a new [SearchWebAPI200Response] instance.
  SearchWebAPI200Response({
    this.results = const [],
  });

  List<SearchWebAPI200ResponseResultsInner> results;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchWebAPI200Response &&
    _deepEquality.equals(other.results, results);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (results.hashCode);

  @override
  String toString() => 'SearchWebAPI200Response[results=$results]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'results'] = this.results;
    return json;
  }

  /// Returns a new [SearchWebAPI200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchWebAPI200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchWebAPI200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchWebAPI200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchWebAPI200Response(
        results: SearchWebAPI200ResponseResultsInner.listFromJson(json[r'results']),
      );
    }
    return null;
  }

  static List<SearchWebAPI200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchWebAPI200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchWebAPI200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchWebAPI200Response> mapFromJson(dynamic json) {
    final map = <String, SearchWebAPI200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchWebAPI200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchWebAPI200Response-objects as value to a dart map
  static Map<String, List<SearchWebAPI200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchWebAPI200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchWebAPI200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

