//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchIconsAPI200ResponseIconsInner {
  /// Returns a new [SearchIconsAPI200ResponseIconsInner] instance.
  SearchIconsAPI200ResponseIconsInner({
    this.id,
    this.url,
    this.thumbnail,
    this.width,
    this.height,
    this.license,
  });

  String? id;

  String? url;

  String? thumbnail;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? width;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? height;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense? license;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchIconsAPI200ResponseIconsInner &&
    other.id == id &&
    other.url == url &&
    other.thumbnail == thumbnail &&
    other.width == width &&
    other.height == height &&
    other.license == license;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (url == null ? 0 : url!.hashCode) +
    (thumbnail == null ? 0 : thumbnail!.hashCode) +
    (width == null ? 0 : width!.hashCode) +
    (height == null ? 0 : height!.hashCode) +
    (license == null ? 0 : license!.hashCode);

  @override
  String toString() => 'SearchIconsAPI200ResponseIconsInner[id=$id, url=$url, thumbnail=$thumbnail, width=$width, height=$height, license=$license]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    if (this.thumbnail != null) {
      json[r'thumbnail'] = this.thumbnail;
    } else {
      json[r'thumbnail'] = null;
    }
    if (this.width != null) {
      json[r'width'] = this.width;
    } else {
      json[r'width'] = null;
    }
    if (this.height != null) {
      json[r'height'] = this.height;
    } else {
      json[r'height'] = null;
    }
    if (this.license != null) {
      json[r'license'] = this.license;
    } else {
      json[r'license'] = null;
    }
    return json;
  }

  /// Returns a new [SearchIconsAPI200ResponseIconsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchIconsAPI200ResponseIconsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchIconsAPI200ResponseIconsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchIconsAPI200ResponseIconsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchIconsAPI200ResponseIconsInner(
        id: mapValueOfType<String>(json, r'id'),
        url: mapValueOfType<String>(json, r'url'),
        thumbnail: mapValueOfType<String>(json, r'thumbnail'),
        width: mapValueOfType<int>(json, r'width'),
        height: mapValueOfType<int>(json, r'height'),
        license: SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense.fromJson(json[r'license']),
      );
    }
    return null;
  }

  static List<SearchIconsAPI200ResponseIconsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchIconsAPI200ResponseIconsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchIconsAPI200ResponseIconsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchIconsAPI200ResponseIconsInner> mapFromJson(dynamic json) {
    final map = <String, SearchIconsAPI200ResponseIconsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchIconsAPI200ResponseIconsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchIconsAPI200ResponseIconsInner-objects as value to a dart map
  static Map<String, List<SearchIconsAPI200ResponseIconsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchIconsAPI200ResponseIconsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchIconsAPI200ResponseIconsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

