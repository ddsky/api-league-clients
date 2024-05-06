//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchRoyaltyFreeImages200ResponseImagesInner {
  /// Returns a new [SearchRoyaltyFreeImages200ResponseImagesInner] instance.
  SearchRoyaltyFreeImages200ResponseImagesInner({
    this.width,
    this.license,
    this.thumbnail,
    this.id,
    this.url,
    this.height,
  });

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
  SearchRoyaltyFreeImages200ResponseImagesInnerLicense? license;

  String? thumbnail;

  String? id;

  String? url;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? height;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchRoyaltyFreeImages200ResponseImagesInner &&
    other.width == width &&
    other.license == license &&
    other.thumbnail == thumbnail &&
    other.id == id &&
    other.url == url &&
    other.height == height;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (width == null ? 0 : width!.hashCode) +
    (license == null ? 0 : license!.hashCode) +
    (thumbnail == null ? 0 : thumbnail!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (url == null ? 0 : url!.hashCode) +
    (height == null ? 0 : height!.hashCode);

  @override
  String toString() => 'SearchRoyaltyFreeImages200ResponseImagesInner[width=$width, license=$license, thumbnail=$thumbnail, id=$id, url=$url, height=$height]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.width != null) {
      json[r'width'] = this.width;
    } else {
      json[r'width'] = null;
    }
    if (this.license != null) {
      json[r'license'] = this.license;
    } else {
      json[r'license'] = null;
    }
    if (this.thumbnail != null) {
      json[r'thumbnail'] = this.thumbnail;
    } else {
      json[r'thumbnail'] = null;
    }
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
    if (this.height != null) {
      json[r'height'] = this.height;
    } else {
      json[r'height'] = null;
    }
    return json;
  }

  /// Returns a new [SearchRoyaltyFreeImages200ResponseImagesInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchRoyaltyFreeImages200ResponseImagesInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchRoyaltyFreeImages200ResponseImagesInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchRoyaltyFreeImages200ResponseImagesInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchRoyaltyFreeImages200ResponseImagesInner(
        width: mapValueOfType<int>(json, r'width'),
        license: SearchRoyaltyFreeImages200ResponseImagesInnerLicense.fromJson(json[r'license']),
        thumbnail: mapValueOfType<String>(json, r'thumbnail'),
        id: mapValueOfType<String>(json, r'id'),
        url: mapValueOfType<String>(json, r'url'),
        height: mapValueOfType<int>(json, r'height'),
      );
    }
    return null;
  }

  static List<SearchRoyaltyFreeImages200ResponseImagesInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchRoyaltyFreeImages200ResponseImagesInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchRoyaltyFreeImages200ResponseImagesInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchRoyaltyFreeImages200ResponseImagesInner> mapFromJson(dynamic json) {
    final map = <String, SearchRoyaltyFreeImages200ResponseImagesInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchRoyaltyFreeImages200ResponseImagesInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchRoyaltyFreeImages200ResponseImagesInner-objects as value to a dart map
  static Map<String, List<SearchRoyaltyFreeImages200ResponseImagesInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchRoyaltyFreeImages200ResponseImagesInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchRoyaltyFreeImages200ResponseImagesInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

