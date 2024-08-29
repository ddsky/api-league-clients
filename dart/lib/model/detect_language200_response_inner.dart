//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DetectLanguage200ResponseInner {
  /// Returns a new [DetectLanguage200ResponseInner] instance.
  DetectLanguage200ResponseInner({
    this.language,
    this.confidence,
  });

  String? language;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? confidence;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DetectLanguage200ResponseInner &&
    other.language == language &&
    other.confidence == confidence;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (language == null ? 0 : language!.hashCode) +
    (confidence == null ? 0 : confidence!.hashCode);

  @override
  String toString() => 'DetectLanguage200ResponseInner[language=$language, confidence=$confidence]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.language != null) {
      json[r'language'] = this.language;
    } else {
      json[r'language'] = null;
    }
    if (this.confidence != null) {
      json[r'confidence'] = this.confidence;
    } else {
      json[r'confidence'] = null;
    }
    return json;
  }

  /// Returns a new [DetectLanguage200ResponseInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DetectLanguage200ResponseInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DetectLanguage200ResponseInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DetectLanguage200ResponseInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DetectLanguage200ResponseInner(
        language: mapValueOfType<String>(json, r'language'),
        confidence: num.parse('${json[r'confidence']}'),
      );
    }
    return null;
  }

  static List<DetectLanguage200ResponseInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DetectLanguage200ResponseInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DetectLanguage200ResponseInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DetectLanguage200ResponseInner> mapFromJson(dynamic json) {
    final map = <String, DetectLanguage200ResponseInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DetectLanguage200ResponseInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DetectLanguage200ResponseInner-objects as value to a dart map
  static Map<String, List<DetectLanguage200ResponseInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DetectLanguage200ResponseInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DetectLanguage200ResponseInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

