//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExtractPublishDateAPI200Response {
  /// Returns a new [ExtractPublishDateAPI200Response] instance.
  ExtractPublishDateAPI200Response({
    this.publishDate,
  });

  String? publishDate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExtractPublishDateAPI200Response &&
    other.publishDate == publishDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (publishDate == null ? 0 : publishDate!.hashCode);

  @override
  String toString() => 'ExtractPublishDateAPI200Response[publishDate=$publishDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.publishDate != null) {
      json[r'publish_date'] = this.publishDate;
    } else {
      json[r'publish_date'] = null;
    }
    return json;
  }

  /// Returns a new [ExtractPublishDateAPI200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExtractPublishDateAPI200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExtractPublishDateAPI200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExtractPublishDateAPI200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExtractPublishDateAPI200Response(
        publishDate: mapValueOfType<String>(json, r'publish_date'),
      );
    }
    return null;
  }

  static List<ExtractPublishDateAPI200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExtractPublishDateAPI200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExtractPublishDateAPI200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExtractPublishDateAPI200Response> mapFromJson(dynamic json) {
    final map = <String, ExtractPublishDateAPI200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExtractPublishDateAPI200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExtractPublishDateAPI200Response-objects as value to a dart map
  static Map<String, List<ExtractPublishDateAPI200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExtractPublishDateAPI200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExtractPublishDateAPI200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

