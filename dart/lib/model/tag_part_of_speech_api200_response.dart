//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TagPartOfSpeechAPI200Response {
  /// Returns a new [TagPartOfSpeechAPI200Response] instance.
  TagPartOfSpeechAPI200Response({
    this.taggedText,
  });

  String? taggedText;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TagPartOfSpeechAPI200Response &&
    other.taggedText == taggedText;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (taggedText == null ? 0 : taggedText!.hashCode);

  @override
  String toString() => 'TagPartOfSpeechAPI200Response[taggedText=$taggedText]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.taggedText != null) {
      json[r'tagged_text'] = this.taggedText;
    } else {
      json[r'tagged_text'] = null;
    }
    return json;
  }

  /// Returns a new [TagPartOfSpeechAPI200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TagPartOfSpeechAPI200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TagPartOfSpeechAPI200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TagPartOfSpeechAPI200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TagPartOfSpeechAPI200Response(
        taggedText: mapValueOfType<String>(json, r'tagged_text'),
      );
    }
    return null;
  }

  static List<TagPartOfSpeechAPI200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TagPartOfSpeechAPI200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TagPartOfSpeechAPI200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TagPartOfSpeechAPI200Response> mapFromJson(dynamic json) {
    final map = <String, TagPartOfSpeechAPI200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TagPartOfSpeechAPI200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TagPartOfSpeechAPI200Response-objects as value to a dart map
  static Map<String, List<TagPartOfSpeechAPI200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TagPartOfSpeechAPI200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TagPartOfSpeechAPI200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

