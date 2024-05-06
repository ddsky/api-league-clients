//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExtractEntities200ResponseEntitiesInner {
  /// Returns a new [ExtractEntities200ResponseEntitiesInner] instance.
  ExtractEntities200ResponseEntitiesInner({
    this.startPosition,
    this.image,
    this.type,
    this.value,
    this.endPosition,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? startPosition;

  String? image;

  String? type;

  String? value;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? endPosition;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExtractEntities200ResponseEntitiesInner &&
    other.startPosition == startPosition &&
    other.image == image &&
    other.type == type &&
    other.value == value &&
    other.endPosition == endPosition;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (startPosition == null ? 0 : startPosition!.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (value == null ? 0 : value!.hashCode) +
    (endPosition == null ? 0 : endPosition!.hashCode);

  @override
  String toString() => 'ExtractEntities200ResponseEntitiesInner[startPosition=$startPosition, image=$image, type=$type, value=$value, endPosition=$endPosition]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.startPosition != null) {
      json[r'start_position'] = this.startPosition;
    } else {
      json[r'start_position'] = null;
    }
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    if (this.endPosition != null) {
      json[r'end_position'] = this.endPosition;
    } else {
      json[r'end_position'] = null;
    }
    return json;
  }

  /// Returns a new [ExtractEntities200ResponseEntitiesInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExtractEntities200ResponseEntitiesInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExtractEntities200ResponseEntitiesInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExtractEntities200ResponseEntitiesInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExtractEntities200ResponseEntitiesInner(
        startPosition: mapValueOfType<int>(json, r'start_position'),
        image: mapValueOfType<String>(json, r'image'),
        type: mapValueOfType<String>(json, r'type'),
        value: mapValueOfType<String>(json, r'value'),
        endPosition: mapValueOfType<int>(json, r'end_position'),
      );
    }
    return null;
  }

  static List<ExtractEntities200ResponseEntitiesInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExtractEntities200ResponseEntitiesInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExtractEntities200ResponseEntitiesInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExtractEntities200ResponseEntitiesInner> mapFromJson(dynamic json) {
    final map = <String, ExtractEntities200ResponseEntitiesInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExtractEntities200ResponseEntitiesInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExtractEntities200ResponseEntitiesInner-objects as value to a dart map
  static Map<String, List<ExtractEntities200ResponseEntitiesInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExtractEntities200ResponseEntitiesInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExtractEntities200ResponseEntitiesInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

