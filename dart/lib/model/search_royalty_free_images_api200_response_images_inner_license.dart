//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense {
  /// Returns a new [SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense] instance.
  SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense({
    this.name,
    this.link,
  });

  String? name;

  String? link;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense &&
    other.name == name &&
    other.link == link;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (link == null ? 0 : link!.hashCode);

  @override
  String toString() => 'SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense[name=$name, link=$link]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.link != null) {
      json[r'link'] = this.link;
    } else {
      json[r'link'] = null;
    }
    return json;
  }

  /// Returns a new [SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense(
        name: mapValueOfType<String>(json, r'name'),
        link: mapValueOfType<String>(json, r'link'),
      );
    }
    return null;
  }

  static List<SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense> mapFromJson(dynamic json) {
    final map = <String, SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense-objects as value to a dart map
  static Map<String, List<SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

