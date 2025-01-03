//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExtractAuthorsAPI200ResponseAuthorsInner {
  /// Returns a new [ExtractAuthorsAPI200ResponseAuthorsInner] instance.
  ExtractAuthorsAPI200ResponseAuthorsInner({
    this.link,
    this.name,
  });

  String? link;

  String? name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExtractAuthorsAPI200ResponseAuthorsInner &&
    other.link == link &&
    other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (link == null ? 0 : link!.hashCode) +
    (name == null ? 0 : name!.hashCode);

  @override
  String toString() => 'ExtractAuthorsAPI200ResponseAuthorsInner[link=$link, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.link != null) {
      json[r'link'] = this.link;
    } else {
      json[r'link'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    return json;
  }

  /// Returns a new [ExtractAuthorsAPI200ResponseAuthorsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExtractAuthorsAPI200ResponseAuthorsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExtractAuthorsAPI200ResponseAuthorsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExtractAuthorsAPI200ResponseAuthorsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExtractAuthorsAPI200ResponseAuthorsInner(
        link: mapValueOfType<String>(json, r'link'),
        name: mapValueOfType<String>(json, r'name'),
      );
    }
    return null;
  }

  static List<ExtractAuthorsAPI200ResponseAuthorsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExtractAuthorsAPI200ResponseAuthorsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExtractAuthorsAPI200ResponseAuthorsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExtractAuthorsAPI200ResponseAuthorsInner> mapFromJson(dynamic json) {
    final map = <String, ExtractAuthorsAPI200ResponseAuthorsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExtractAuthorsAPI200ResponseAuthorsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExtractAuthorsAPI200ResponseAuthorsInner-objects as value to a dart map
  static Map<String, List<ExtractAuthorsAPI200ResponseAuthorsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExtractAuthorsAPI200ResponseAuthorsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExtractAuthorsAPI200ResponseAuthorsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

