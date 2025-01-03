//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExtractNewsAPI200ResponseVideosInner {
  /// Returns a new [ExtractNewsAPI200ResponseVideosInner] instance.
  ExtractNewsAPI200ResponseVideosInner({
    this.summary,
    this.duration,
    this.thumbnail,
    this.title,
    this.url,
  });

  String? summary;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? duration;

  String? thumbnail;

  String? title;

  String? url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExtractNewsAPI200ResponseVideosInner &&
    other.summary == summary &&
    other.duration == duration &&
    other.thumbnail == thumbnail &&
    other.title == title &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (summary == null ? 0 : summary!.hashCode) +
    (duration == null ? 0 : duration!.hashCode) +
    (thumbnail == null ? 0 : thumbnail!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (url == null ? 0 : url!.hashCode);

  @override
  String toString() => 'ExtractNewsAPI200ResponseVideosInner[summary=$summary, duration=$duration, thumbnail=$thumbnail, title=$title, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.summary != null) {
      json[r'summary'] = this.summary;
    } else {
      json[r'summary'] = null;
    }
    if (this.duration != null) {
      json[r'duration'] = this.duration;
    } else {
      json[r'duration'] = null;
    }
    if (this.thumbnail != null) {
      json[r'thumbnail'] = this.thumbnail;
    } else {
      json[r'thumbnail'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    return json;
  }

  /// Returns a new [ExtractNewsAPI200ResponseVideosInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExtractNewsAPI200ResponseVideosInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExtractNewsAPI200ResponseVideosInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExtractNewsAPI200ResponseVideosInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExtractNewsAPI200ResponseVideosInner(
        summary: mapValueOfType<String>(json, r'summary'),
        duration: mapValueOfType<int>(json, r'duration'),
        thumbnail: mapValueOfType<String>(json, r'thumbnail'),
        title: mapValueOfType<String>(json, r'title'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<ExtractNewsAPI200ResponseVideosInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExtractNewsAPI200ResponseVideosInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExtractNewsAPI200ResponseVideosInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExtractNewsAPI200ResponseVideosInner> mapFromJson(dynamic json) {
    final map = <String, ExtractNewsAPI200ResponseVideosInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExtractNewsAPI200ResponseVideosInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExtractNewsAPI200ResponseVideosInner-objects as value to a dart map
  static Map<String, List<ExtractNewsAPI200ResponseVideosInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExtractNewsAPI200ResponseVideosInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExtractNewsAPI200ResponseVideosInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

