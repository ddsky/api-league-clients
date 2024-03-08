//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CorrectSpelling200Response {
  /// Returns a new [CorrectSpelling200Response] instance.
  CorrectSpelling200Response({
    this.correctedText,
  });

  String? correctedText;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CorrectSpelling200Response &&
    other.correctedText == correctedText;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (correctedText == null ? 0 : correctedText!.hashCode);

  @override
  String toString() => 'CorrectSpelling200Response[correctedText=$correctedText]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.correctedText != null) {
      json[r'corrected_text'] = this.correctedText;
    } else {
      json[r'corrected_text'] = null;
    }
    return json;
  }

  /// Returns a new [CorrectSpelling200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CorrectSpelling200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CorrectSpelling200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CorrectSpelling200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CorrectSpelling200Response(
        correctedText: mapValueOfType<String>(json, r'corrected_text'),
      );
    }
    return null;
  }

  static List<CorrectSpelling200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CorrectSpelling200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CorrectSpelling200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CorrectSpelling200Response> mapFromJson(dynamic json) {
    final map = <String, CorrectSpelling200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CorrectSpelling200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CorrectSpelling200Response-objects as value to a dart map
  static Map<String, List<CorrectSpelling200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CorrectSpelling200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CorrectSpelling200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

