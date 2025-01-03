//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ReadKeyValueFromStoreAPI200Response {
  /// Returns a new [ReadKeyValueFromStoreAPI200Response] instance.
  ReadKeyValueFromStoreAPI200Response({
    this.value,
  });

  String? value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReadKeyValueFromStoreAPI200Response &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (value == null ? 0 : value!.hashCode);

  @override
  String toString() => 'ReadKeyValueFromStoreAPI200Response[value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    return json;
  }

  /// Returns a new [ReadKeyValueFromStoreAPI200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReadKeyValueFromStoreAPI200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ReadKeyValueFromStoreAPI200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ReadKeyValueFromStoreAPI200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ReadKeyValueFromStoreAPI200Response(
        value: mapValueOfType<String>(json, r'value'),
      );
    }
    return null;
  }

  static List<ReadKeyValueFromStoreAPI200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReadKeyValueFromStoreAPI200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReadKeyValueFromStoreAPI200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ReadKeyValueFromStoreAPI200Response> mapFromJson(dynamic json) {
    final map = <String, ReadKeyValueFromStoreAPI200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReadKeyValueFromStoreAPI200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ReadKeyValueFromStoreAPI200Response-objects as value to a dart map
  static Map<String, List<ReadKeyValueFromStoreAPI200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ReadKeyValueFromStoreAPI200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ReadKeyValueFromStoreAPI200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

