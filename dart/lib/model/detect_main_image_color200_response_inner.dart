//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DetectMainImageColor200ResponseInner {
  /// Returns a new [DetectMainImageColor200ResponseInner] instance.
  DetectMainImageColor200ResponseInner({
    this.specificColor,
    this.mainColor,
    this.hexCode,
  });

  String? specificColor;

  String? mainColor;

  String? hexCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DetectMainImageColor200ResponseInner &&
    other.specificColor == specificColor &&
    other.mainColor == mainColor &&
    other.hexCode == hexCode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (specificColor == null ? 0 : specificColor!.hashCode) +
    (mainColor == null ? 0 : mainColor!.hashCode) +
    (hexCode == null ? 0 : hexCode!.hashCode);

  @override
  String toString() => 'DetectMainImageColor200ResponseInner[specificColor=$specificColor, mainColor=$mainColor, hexCode=$hexCode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.specificColor != null) {
      json[r'specific_color'] = this.specificColor;
    } else {
      json[r'specific_color'] = null;
    }
    if (this.mainColor != null) {
      json[r'main_color'] = this.mainColor;
    } else {
      json[r'main_color'] = null;
    }
    if (this.hexCode != null) {
      json[r'hex_code'] = this.hexCode;
    } else {
      json[r'hex_code'] = null;
    }
    return json;
  }

  /// Returns a new [DetectMainImageColor200ResponseInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DetectMainImageColor200ResponseInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DetectMainImageColor200ResponseInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DetectMainImageColor200ResponseInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DetectMainImageColor200ResponseInner(
        specificColor: mapValueOfType<String>(json, r'specific_color'),
        mainColor: mapValueOfType<String>(json, r'main_color'),
        hexCode: mapValueOfType<String>(json, r'hex_code'),
      );
    }
    return null;
  }

  static List<DetectMainImageColor200ResponseInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DetectMainImageColor200ResponseInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DetectMainImageColor200ResponseInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DetectMainImageColor200ResponseInner> mapFromJson(dynamic json) {
    final map = <String, DetectMainImageColor200ResponseInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DetectMainImageColor200ResponseInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DetectMainImageColor200ResponseInner-objects as value to a dart map
  static Map<String, List<DetectMainImageColor200ResponseInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DetectMainImageColor200ResponseInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DetectMainImageColor200ResponseInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

