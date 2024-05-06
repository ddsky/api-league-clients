//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExtractAuthors200Response {
  /// Returns a new [ExtractAuthors200Response] instance.
  ExtractAuthors200Response({
    this.authors = const [],
  });

  List<ExtractAuthors200ResponseAuthorsInner> authors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExtractAuthors200Response &&
    _deepEquality.equals(other.authors, authors);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (authors.hashCode);

  @override
  String toString() => 'ExtractAuthors200Response[authors=$authors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'authors'] = this.authors;
    return json;
  }

  /// Returns a new [ExtractAuthors200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExtractAuthors200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExtractAuthors200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExtractAuthors200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExtractAuthors200Response(
        authors: ExtractAuthors200ResponseAuthorsInner.listFromJson(json[r'authors']),
      );
    }
    return null;
  }

  static List<ExtractAuthors200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExtractAuthors200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExtractAuthors200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExtractAuthors200Response> mapFromJson(dynamic json) {
    final map = <String, ExtractAuthors200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExtractAuthors200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExtractAuthors200Response-objects as value to a dart map
  static Map<String, List<ExtractAuthors200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExtractAuthors200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExtractAuthors200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

