//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DetectSentiment200Response {
  /// Returns a new [DetectSentiment200Response] instance.
  DetectSentiment200Response({
    this.document,
    this.sentences = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DetectSentiment200ResponseDocument? document;

  List<DetectSentiment200ResponseSentencesInner> sentences;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DetectSentiment200Response &&
    other.document == document &&
    _deepEquality.equals(other.sentences, sentences);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (document == null ? 0 : document!.hashCode) +
    (sentences.hashCode);

  @override
  String toString() => 'DetectSentiment200Response[document=$document, sentences=$sentences]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.document != null) {
      json[r'document'] = this.document;
    } else {
      json[r'document'] = null;
    }
      json[r'sentences'] = this.sentences;
    return json;
  }

  /// Returns a new [DetectSentiment200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DetectSentiment200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DetectSentiment200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DetectSentiment200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DetectSentiment200Response(
        document: DetectSentiment200ResponseDocument.fromJson(json[r'document']),
        sentences: DetectSentiment200ResponseSentencesInner.listFromJson(json[r'sentences']),
      );
    }
    return null;
  }

  static List<DetectSentiment200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DetectSentiment200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DetectSentiment200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DetectSentiment200Response> mapFromJson(dynamic json) {
    final map = <String, DetectSentiment200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DetectSentiment200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DetectSentiment200Response-objects as value to a dart map
  static Map<String, List<DetectSentiment200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DetectSentiment200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DetectSentiment200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

