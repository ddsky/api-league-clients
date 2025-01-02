//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DetectSentimentAPI200ResponseSentencesInner {
  /// Returns a new [DetectSentimentAPI200ResponseSentencesInner] instance.
  DetectSentimentAPI200ResponseSentencesInner({
    this.length,
    this.sentiment,
    this.offset,
    this.confidence,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? length;

  String? sentiment;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? offset;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? confidence;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DetectSentimentAPI200ResponseSentencesInner &&
    other.length == length &&
    other.sentiment == sentiment &&
    other.offset == offset &&
    other.confidence == confidence;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (length == null ? 0 : length!.hashCode) +
    (sentiment == null ? 0 : sentiment!.hashCode) +
    (offset == null ? 0 : offset!.hashCode) +
    (confidence == null ? 0 : confidence!.hashCode);

  @override
  String toString() => 'DetectSentimentAPI200ResponseSentencesInner[length=$length, sentiment=$sentiment, offset=$offset, confidence=$confidence]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.length != null) {
      json[r'length'] = this.length;
    } else {
      json[r'length'] = null;
    }
    if (this.sentiment != null) {
      json[r'sentiment'] = this.sentiment;
    } else {
      json[r'sentiment'] = null;
    }
    if (this.offset != null) {
      json[r'offset'] = this.offset;
    } else {
      json[r'offset'] = null;
    }
    if (this.confidence != null) {
      json[r'confidence'] = this.confidence;
    } else {
      json[r'confidence'] = null;
    }
    return json;
  }

  /// Returns a new [DetectSentimentAPI200ResponseSentencesInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DetectSentimentAPI200ResponseSentencesInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DetectSentimentAPI200ResponseSentencesInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DetectSentimentAPI200ResponseSentencesInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DetectSentimentAPI200ResponseSentencesInner(
        length: mapValueOfType<int>(json, r'length'),
        sentiment: mapValueOfType<String>(json, r'sentiment'),
        offset: mapValueOfType<int>(json, r'offset'),
        confidence: mapValueOfType<int>(json, r'confidence'),
      );
    }
    return null;
  }

  static List<DetectSentimentAPI200ResponseSentencesInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DetectSentimentAPI200ResponseSentencesInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DetectSentimentAPI200ResponseSentencesInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DetectSentimentAPI200ResponseSentencesInner> mapFromJson(dynamic json) {
    final map = <String, DetectSentimentAPI200ResponseSentencesInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DetectSentimentAPI200ResponseSentencesInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DetectSentimentAPI200ResponseSentencesInner-objects as value to a dart map
  static Map<String, List<DetectSentimentAPI200ResponseSentencesInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DetectSentimentAPI200ResponseSentencesInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DetectSentimentAPI200ResponseSentencesInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

