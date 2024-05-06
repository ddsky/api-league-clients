//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchWeb200ResponseResultsInner {
  /// Returns a new [SearchWeb200ResponseResultsInner] instance.
  SearchWeb200ResponseResultsInner({
    this.title,
    this.summary,
    this.url,
  });

  String? title;

  String? summary;

  String? url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchWeb200ResponseResultsInner &&
    other.title == title &&
    other.summary == summary &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (title == null ? 0 : title!.hashCode) +
    (summary == null ? 0 : summary!.hashCode) +
    (url == null ? 0 : url!.hashCode);

  @override
  String toString() => 'SearchWeb200ResponseResultsInner[title=$title, summary=$summary, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    return json;
  }

  /// Returns a new [SearchWeb200ResponseResultsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchWeb200ResponseResultsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchWeb200ResponseResultsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchWeb200ResponseResultsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchWeb200ResponseResultsInner(
        title: mapValueOfType<String>(json, r'title'),
        summary: mapValueOfType<String>(json, r'summary'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<SearchWeb200ResponseResultsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchWeb200ResponseResultsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchWeb200ResponseResultsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchWeb200ResponseResultsInner> mapFromJson(dynamic json) {
    final map = <String, SearchWeb200ResponseResultsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchWeb200ResponseResultsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchWeb200ResponseResultsInner-objects as value to a dart map
  static Map<String, List<SearchWeb200ResponseResultsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchWeb200ResponseResultsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchWeb200ResponseResultsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

