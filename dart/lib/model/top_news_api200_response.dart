//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TopNewsAPI200Response {
  /// Returns a new [TopNewsAPI200Response] instance.
  TopNewsAPI200Response({
    this.topNews = const [],
    this.language,
    this.country,
  });

  List<TopNewsAPI200ResponseTopNewsInner> topNews;

  String? language;

  String? country;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TopNewsAPI200Response &&
    _deepEquality.equals(other.topNews, topNews) &&
    other.language == language &&
    other.country == country;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (topNews.hashCode) +
    (language == null ? 0 : language!.hashCode) +
    (country == null ? 0 : country!.hashCode);

  @override
  String toString() => 'TopNewsAPI200Response[topNews=$topNews, language=$language, country=$country]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'top_news'] = this.topNews;
    if (this.language != null) {
      json[r'language'] = this.language;
    } else {
      json[r'language'] = null;
    }
    if (this.country != null) {
      json[r'country'] = this.country;
    } else {
      json[r'country'] = null;
    }
    return json;
  }

  /// Returns a new [TopNewsAPI200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TopNewsAPI200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TopNewsAPI200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TopNewsAPI200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TopNewsAPI200Response(
        topNews: TopNewsAPI200ResponseTopNewsInner.listFromJson(json[r'top_news']),
        language: mapValueOfType<String>(json, r'language'),
        country: mapValueOfType<String>(json, r'country'),
      );
    }
    return null;
  }

  static List<TopNewsAPI200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TopNewsAPI200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TopNewsAPI200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TopNewsAPI200Response> mapFromJson(dynamic json) {
    final map = <String, TopNewsAPI200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TopNewsAPI200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TopNewsAPI200Response-objects as value to a dart map
  static Map<String, List<TopNewsAPI200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TopNewsAPI200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TopNewsAPI200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

