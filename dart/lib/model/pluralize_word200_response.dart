//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PluralizeWord200Response {
  /// Returns a new [PluralizeWord200Response] instance.
  PluralizeWord200Response({
    this.original,
    this.plural,
  });

  String? original;

  String? plural;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PluralizeWord200Response &&
    other.original == original &&
    other.plural == plural;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (original == null ? 0 : original!.hashCode) +
    (plural == null ? 0 : plural!.hashCode);

  @override
  String toString() => 'PluralizeWord200Response[original=$original, plural=$plural]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.original != null) {
      json[r'original'] = this.original;
    } else {
      json[r'original'] = null;
    }
    if (this.plural != null) {
      json[r'plural'] = this.plural;
    } else {
      json[r'plural'] = null;
    }
    return json;
  }

  /// Returns a new [PluralizeWord200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PluralizeWord200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PluralizeWord200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PluralizeWord200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PluralizeWord200Response(
        original: mapValueOfType<String>(json, r'original'),
        plural: mapValueOfType<String>(json, r'plural'),
      );
    }
    return null;
  }

  static List<PluralizeWord200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PluralizeWord200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PluralizeWord200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PluralizeWord200Response> mapFromJson(dynamic json) {
    final map = <String, PluralizeWord200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PluralizeWord200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PluralizeWord200Response-objects as value to a dart map
  static Map<String, List<PluralizeWord200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PluralizeWord200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PluralizeWord200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

