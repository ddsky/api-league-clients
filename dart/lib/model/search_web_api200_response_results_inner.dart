//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchWebAPI200ResponseResultsInner {
  /// Returns a new [SearchWebAPI200ResponseResultsInner] instance.
  SearchWebAPI200ResponseResultsInner({
    this.url,
    this.title,
    this.summary,
  });

  String? url;

  String? title;

  String? summary;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchWebAPI200ResponseResultsInner &&
    other.url == url &&
    other.title == title &&
    other.summary == summary;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (url == null ? 0 : url!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (summary == null ? 0 : summary!.hashCode);

  @override
  String toString() => 'SearchWebAPI200ResponseResultsInner[url=$url, title=$title, summary=$summary]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.summary != null) {
      json[r'summary'] = this.summary;
    } else {
      json[r'summary'] = null;
    }
    return json;
  }

  /// Returns a new [SearchWebAPI200ResponseResultsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchWebAPI200ResponseResultsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchWebAPI200ResponseResultsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchWebAPI200ResponseResultsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchWebAPI200ResponseResultsInner(
        url: mapValueOfType<String>(json, r'url'),
        title: mapValueOfType<String>(json, r'title'),
        summary: mapValueOfType<String>(json, r'summary'),
      );
    }
    return null;
  }

  static List<SearchWebAPI200ResponseResultsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchWebAPI200ResponseResultsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchWebAPI200ResponseResultsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchWebAPI200ResponseResultsInner> mapFromJson(dynamic json) {
    final map = <String, SearchWebAPI200ResponseResultsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchWebAPI200ResponseResultsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchWebAPI200ResponseResultsInner-objects as value to a dart map
  static Map<String, List<SearchWebAPI200ResponseResultsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchWebAPI200ResponseResultsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchWebAPI200ResponseResultsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

