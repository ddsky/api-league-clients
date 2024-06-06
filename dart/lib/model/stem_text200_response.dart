//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StemText200Response {
  /// Returns a new [StemText200Response] instance.
  StemText200Response({
    this.original,
    this.stemmed,
  });

  String? original;

  String? stemmed;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StemText200Response &&
    other.original == original &&
    other.stemmed == stemmed;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (original == null ? 0 : original!.hashCode) +
    (stemmed == null ? 0 : stemmed!.hashCode);

  @override
  String toString() => 'StemText200Response[original=$original, stemmed=$stemmed]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.original != null) {
      json[r'original'] = this.original;
    } else {
      json[r'original'] = null;
    }
    if (this.stemmed != null) {
      json[r'stemmed'] = this.stemmed;
    } else {
      json[r'stemmed'] = null;
    }
    return json;
  }

  /// Returns a new [StemText200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StemText200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StemText200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StemText200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StemText200Response(
        original: mapValueOfType<String>(json, r'original'),
        stemmed: mapValueOfType<String>(json, r'stemmed'),
      );
    }
    return null;
  }

  static List<StemText200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StemText200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StemText200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StemText200Response> mapFromJson(dynamic json) {
    final map = <String, StemText200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StemText200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StemText200Response-objects as value to a dart map
  static Map<String, List<StemText200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StemText200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StemText200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

