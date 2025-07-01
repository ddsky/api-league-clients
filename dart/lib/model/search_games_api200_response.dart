//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchGamesAPI200Response {
  /// Returns a new [SearchGamesAPI200Response] instance.
  SearchGamesAPI200Response({
    this.sorting,
    this.activeFilterOptions = const [],
    this.query,
    this.totalResults,
    this.limit,
    this.offset,
    this.results = const [],
    this.filterOptions = const [],
    this.sortingOptions = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? sorting;

  List<SearchGamesAPI200ResponseActiveFilterOptionsInner> activeFilterOptions;

  String? query;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalResults;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? limit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? offset;

  List<SearchGamesAPI200ResponseResultsInner> results;

  List<SearchGamesAPI200ResponseFilterOptionsInner> filterOptions;

  List<SearchGamesAPI200ResponseSortingOptionsInner> sortingOptions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchGamesAPI200Response &&
    other.sorting == sorting &&
    _deepEquality.equals(other.activeFilterOptions, activeFilterOptions) &&
    other.query == query &&
    other.totalResults == totalResults &&
    other.limit == limit &&
    other.offset == offset &&
    _deepEquality.equals(other.results, results) &&
    _deepEquality.equals(other.filterOptions, filterOptions) &&
    _deepEquality.equals(other.sortingOptions, sortingOptions);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sorting == null ? 0 : sorting!.hashCode) +
    (activeFilterOptions.hashCode) +
    (query == null ? 0 : query!.hashCode) +
    (totalResults == null ? 0 : totalResults!.hashCode) +
    (limit == null ? 0 : limit!.hashCode) +
    (offset == null ? 0 : offset!.hashCode) +
    (results.hashCode) +
    (filterOptions.hashCode) +
    (sortingOptions.hashCode);

  @override
  String toString() => 'SearchGamesAPI200Response[sorting=$sorting, activeFilterOptions=$activeFilterOptions, query=$query, totalResults=$totalResults, limit=$limit, offset=$offset, results=$results, filterOptions=$filterOptions, sortingOptions=$sortingOptions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.sorting != null) {
      json[r'sorting'] = this.sorting;
    } else {
      json[r'sorting'] = null;
    }
      json[r'active_filter_options'] = this.activeFilterOptions;
    if (this.query != null) {
      json[r'query'] = this.query;
    } else {
      json[r'query'] = null;
    }
    if (this.totalResults != null) {
      json[r'total_results'] = this.totalResults;
    } else {
      json[r'total_results'] = null;
    }
    if (this.limit != null) {
      json[r'limit'] = this.limit;
    } else {
      json[r'limit'] = null;
    }
    if (this.offset != null) {
      json[r'offset'] = this.offset;
    } else {
      json[r'offset'] = null;
    }
      json[r'results'] = this.results;
      json[r'filter_options'] = this.filterOptions;
      json[r'sorting_options'] = this.sortingOptions;
    return json;
  }

  /// Returns a new [SearchGamesAPI200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchGamesAPI200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchGamesAPI200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchGamesAPI200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchGamesAPI200Response(
        sorting: mapValueOfType<Object>(json, r'sorting'),
        activeFilterOptions: SearchGamesAPI200ResponseActiveFilterOptionsInner.listFromJson(json[r'active_filter_options']),
        query: mapValueOfType<String>(json, r'query'),
        totalResults: mapValueOfType<int>(json, r'total_results'),
        limit: mapValueOfType<int>(json, r'limit'),
        offset: mapValueOfType<int>(json, r'offset'),
        results: SearchGamesAPI200ResponseResultsInner.listFromJson(json[r'results']),
        filterOptions: SearchGamesAPI200ResponseFilterOptionsInner.listFromJson(json[r'filter_options']),
        sortingOptions: SearchGamesAPI200ResponseSortingOptionsInner.listFromJson(json[r'sorting_options']),
      );
    }
    return null;
  }

  static List<SearchGamesAPI200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchGamesAPI200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchGamesAPI200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchGamesAPI200Response> mapFromJson(dynamic json) {
    final map = <String, SearchGamesAPI200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchGamesAPI200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchGamesAPI200Response-objects as value to a dart map
  static Map<String, List<SearchGamesAPI200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchGamesAPI200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchGamesAPI200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

