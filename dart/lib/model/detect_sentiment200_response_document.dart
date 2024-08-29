//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DetectSentiment200ResponseDocument {
  /// Returns a new [DetectSentiment200ResponseDocument] instance.
  DetectSentiment200ResponseDocument({
    this.sentiment,
    this.confidence,
    this.averageConfidence,
  });

  String? sentiment;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? confidence;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? averageConfidence;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DetectSentiment200ResponseDocument &&
    other.sentiment == sentiment &&
    other.confidence == confidence &&
    other.averageConfidence == averageConfidence;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sentiment == null ? 0 : sentiment!.hashCode) +
    (confidence == null ? 0 : confidence!.hashCode) +
    (averageConfidence == null ? 0 : averageConfidence!.hashCode);

  @override
  String toString() => 'DetectSentiment200ResponseDocument[sentiment=$sentiment, confidence=$confidence, averageConfidence=$averageConfidence]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.sentiment != null) {
      json[r'sentiment'] = this.sentiment;
    } else {
      json[r'sentiment'] = null;
    }
    if (this.confidence != null) {
      json[r'confidence'] = this.confidence;
    } else {
      json[r'confidence'] = null;
    }
    if (this.averageConfidence != null) {
      json[r'average_confidence'] = this.averageConfidence;
    } else {
      json[r'average_confidence'] = null;
    }
    return json;
  }

  /// Returns a new [DetectSentiment200ResponseDocument] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DetectSentiment200ResponseDocument? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DetectSentiment200ResponseDocument[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DetectSentiment200ResponseDocument[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DetectSentiment200ResponseDocument(
        sentiment: mapValueOfType<String>(json, r'sentiment'),
        confidence: mapValueOfType<int>(json, r'confidence'),
        averageConfidence: mapValueOfType<int>(json, r'average_confidence'),
      );
    }
    return null;
  }

  static List<DetectSentiment200ResponseDocument> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DetectSentiment200ResponseDocument>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DetectSentiment200ResponseDocument.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DetectSentiment200ResponseDocument> mapFromJson(dynamic json) {
    final map = <String, DetectSentiment200ResponseDocument>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DetectSentiment200ResponseDocument.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DetectSentiment200ResponseDocument-objects as value to a dart map
  static Map<String, List<DetectSentiment200ResponseDocument>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DetectSentiment200ResponseDocument>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DetectSentiment200ResponseDocument.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

