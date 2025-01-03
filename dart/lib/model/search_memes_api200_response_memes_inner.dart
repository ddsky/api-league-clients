//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchMemesAPI200ResponseMemesInner {
  /// Returns a new [SearchMemesAPI200ResponseMemesInner] instance.
  SearchMemesAPI200ResponseMemesInner({
    this.type,
    this.description,
    this.url,
  });

  String? type;

  String? description;

  String? url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchMemesAPI200ResponseMemesInner &&
    other.type == type &&
    other.description == description &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type == null ? 0 : type!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (url == null ? 0 : url!.hashCode);

  @override
  String toString() => 'SearchMemesAPI200ResponseMemesInner[type=$type, description=$description, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    return json;
  }

  /// Returns a new [SearchMemesAPI200ResponseMemesInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchMemesAPI200ResponseMemesInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchMemesAPI200ResponseMemesInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchMemesAPI200ResponseMemesInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchMemesAPI200ResponseMemesInner(
        type: mapValueOfType<String>(json, r'type'),
        description: mapValueOfType<String>(json, r'description'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<SearchMemesAPI200ResponseMemesInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchMemesAPI200ResponseMemesInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchMemesAPI200ResponseMemesInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchMemesAPI200ResponseMemesInner> mapFromJson(dynamic json) {
    final map = <String, SearchMemesAPI200ResponseMemesInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchMemesAPI200ResponseMemesInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchMemesAPI200ResponseMemesInner-objects as value to a dart map
  static Map<String, List<SearchMemesAPI200ResponseMemesInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchMemesAPI200ResponseMemesInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchMemesAPI200ResponseMemesInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

