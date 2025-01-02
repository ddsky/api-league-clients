//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VectorSearchAPI200ResponseVectorsInner {
  /// Returns a new [VectorSearchAPI200ResponseVectorsInner] instance.
  VectorSearchAPI200ResponseVectorsInner({
    this.license,
    this.title,
    this.author,
    this.imageUrl,
  });

  String? license;

  String? title;

  String? author;

  String? imageUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VectorSearchAPI200ResponseVectorsInner &&
    other.license == license &&
    other.title == title &&
    other.author == author &&
    other.imageUrl == imageUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (license == null ? 0 : license!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (author == null ? 0 : author!.hashCode) +
    (imageUrl == null ? 0 : imageUrl!.hashCode);

  @override
  String toString() => 'VectorSearchAPI200ResponseVectorsInner[license=$license, title=$title, author=$author, imageUrl=$imageUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.license != null) {
      json[r'license'] = this.license;
    } else {
      json[r'license'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.author != null) {
      json[r'author'] = this.author;
    } else {
      json[r'author'] = null;
    }
    if (this.imageUrl != null) {
      json[r'image_url'] = this.imageUrl;
    } else {
      json[r'image_url'] = null;
    }
    return json;
  }

  /// Returns a new [VectorSearchAPI200ResponseVectorsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VectorSearchAPI200ResponseVectorsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VectorSearchAPI200ResponseVectorsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VectorSearchAPI200ResponseVectorsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VectorSearchAPI200ResponseVectorsInner(
        license: mapValueOfType<String>(json, r'license'),
        title: mapValueOfType<String>(json, r'title'),
        author: mapValueOfType<String>(json, r'author'),
        imageUrl: mapValueOfType<String>(json, r'image_url'),
      );
    }
    return null;
  }

  static List<VectorSearchAPI200ResponseVectorsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VectorSearchAPI200ResponseVectorsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VectorSearchAPI200ResponseVectorsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VectorSearchAPI200ResponseVectorsInner> mapFromJson(dynamic json) {
    final map = <String, VectorSearchAPI200ResponseVectorsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VectorSearchAPI200ResponseVectorsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VectorSearchAPI200ResponseVectorsInner-objects as value to a dart map
  static Map<String, List<VectorSearchAPI200ResponseVectorsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VectorSearchAPI200ResponseVectorsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VectorSearchAPI200ResponseVectorsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

