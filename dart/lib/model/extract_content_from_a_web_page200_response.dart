//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExtractContentFromAWebPage200Response {
  /// Returns a new [ExtractContentFromAWebPage200Response] instance.
  ExtractContentFromAWebPage200Response({
    this.title,
    this.mainText,
    this.mainHtml,
    this.images = const [],
  });

  String? title;

  String? mainText;

  String? mainHtml;

  List<String> images;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExtractContentFromAWebPage200Response &&
    other.title == title &&
    other.mainText == mainText &&
    other.mainHtml == mainHtml &&
    _deepEquality.equals(other.images, images);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (title == null ? 0 : title!.hashCode) +
    (mainText == null ? 0 : mainText!.hashCode) +
    (mainHtml == null ? 0 : mainHtml!.hashCode) +
    (images.hashCode);

  @override
  String toString() => 'ExtractContentFromAWebPage200Response[title=$title, mainText=$mainText, mainHtml=$mainHtml, images=$images]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.mainText != null) {
      json[r'main_text'] = this.mainText;
    } else {
      json[r'main_text'] = null;
    }
    if (this.mainHtml != null) {
      json[r'main_html'] = this.mainHtml;
    } else {
      json[r'main_html'] = null;
    }
      json[r'images'] = this.images;
    return json;
  }

  /// Returns a new [ExtractContentFromAWebPage200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExtractContentFromAWebPage200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExtractContentFromAWebPage200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExtractContentFromAWebPage200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExtractContentFromAWebPage200Response(
        title: mapValueOfType<String>(json, r'title'),
        mainText: mapValueOfType<String>(json, r'main_text'),
        mainHtml: mapValueOfType<String>(json, r'main_html'),
        images: json[r'images'] is Iterable
            ? (json[r'images'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<ExtractContentFromAWebPage200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExtractContentFromAWebPage200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExtractContentFromAWebPage200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExtractContentFromAWebPage200Response> mapFromJson(dynamic json) {
    final map = <String, ExtractContentFromAWebPage200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExtractContentFromAWebPage200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExtractContentFromAWebPage200Response-objects as value to a dart map
  static Map<String, List<ExtractContentFromAWebPage200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExtractContentFromAWebPage200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExtractContentFromAWebPage200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

