//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RandomMemeAPI200Response {
  /// Returns a new [RandomMemeAPI200Response] instance.
  RandomMemeAPI200Response({
    this.description,
    this.url,
    this.type,
    this.width,
    this.height,
    this.ratio,
  });

  String? description;

  String? url;

  String? type;

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
  num? ratio;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RandomMemeAPI200Response &&
    other.description == description &&
    other.url == url &&
    other.type == type &&
    other.width == width &&
    other.height == height &&
    other.ratio == ratio;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (description == null ? 0 : description!.hashCode) +
    (url == null ? 0 : url!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (width == null ? 0 : width!.hashCode) +
    (height == null ? 0 : height!.hashCode) +
    (ratio == null ? 0 : ratio!.hashCode);

  @override
  String toString() => 'RandomMemeAPI200Response[description=$description, url=$url, type=$type, width=$width, height=$height, ratio=$ratio]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
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
    if (this.ratio != null) {
      json[r'ratio'] = this.ratio;
    } else {
      json[r'ratio'] = null;
    }
    return json;
  }

  /// Returns a new [RandomMemeAPI200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RandomMemeAPI200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RandomMemeAPI200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RandomMemeAPI200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RandomMemeAPI200Response(
        description: mapValueOfType<String>(json, r'description'),
        url: mapValueOfType<String>(json, r'url'),
        type: mapValueOfType<String>(json, r'type'),
        width: mapValueOfType<int>(json, r'width'),
        height: mapValueOfType<int>(json, r'height'),
        ratio: num.parse('${json[r'ratio']}'),
      );
    }
    return null;
  }

  static List<RandomMemeAPI200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RandomMemeAPI200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RandomMemeAPI200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RandomMemeAPI200Response> mapFromJson(dynamic json) {
    final map = <String, RandomMemeAPI200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RandomMemeAPI200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RandomMemeAPI200Response-objects as value to a dart map
  static Map<String, List<RandomMemeAPI200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RandomMemeAPI200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RandomMemeAPI200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

