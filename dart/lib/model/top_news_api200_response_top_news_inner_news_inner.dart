//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TopNewsAPI200ResponseTopNewsInnerNewsInner {
  /// Returns a new [TopNewsAPI200ResponseTopNewsInnerNewsInner] instance.
  TopNewsAPI200ResponseTopNewsInnerNewsInner({
    this.id,
    this.title,
    this.text,
    this.summary,
    this.url,
    this.image,
    this.publishDate,
    this.authors = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  String? title;

  String? text;

  String? summary;

  String? url;

  String? image;

  String? publishDate;

  List<String> authors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TopNewsAPI200ResponseTopNewsInnerNewsInner &&
    other.id == id &&
    other.title == title &&
    other.text == text &&
    other.summary == summary &&
    other.url == url &&
    other.image == image &&
    other.publishDate == publishDate &&
    _deepEquality.equals(other.authors, authors);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (text == null ? 0 : text!.hashCode) +
    (summary == null ? 0 : summary!.hashCode) +
    (url == null ? 0 : url!.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (publishDate == null ? 0 : publishDate!.hashCode) +
    (authors.hashCode);

  @override
  String toString() => 'TopNewsAPI200ResponseTopNewsInnerNewsInner[id=$id, title=$title, text=$text, summary=$summary, url=$url, image=$image, publishDate=$publishDate, authors=$authors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.text != null) {
      json[r'text'] = this.text;
    } else {
      json[r'text'] = null;
    }
    if (this.summary != null) {
      json[r'summary'] = this.summary;
    } else {
      json[r'summary'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    if (this.publishDate != null) {
      json[r'publish_date'] = this.publishDate;
    } else {
      json[r'publish_date'] = null;
    }
      json[r'authors'] = this.authors;
    return json;
  }

  /// Returns a new [TopNewsAPI200ResponseTopNewsInnerNewsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TopNewsAPI200ResponseTopNewsInnerNewsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TopNewsAPI200ResponseTopNewsInnerNewsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TopNewsAPI200ResponseTopNewsInnerNewsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TopNewsAPI200ResponseTopNewsInnerNewsInner(
        id: mapValueOfType<int>(json, r'id'),
        title: mapValueOfType<String>(json, r'title'),
        text: mapValueOfType<String>(json, r'text'),
        summary: mapValueOfType<String>(json, r'summary'),
        url: mapValueOfType<String>(json, r'url'),
        image: mapValueOfType<String>(json, r'image'),
        publishDate: mapValueOfType<String>(json, r'publish_date'),
        authors: json[r'authors'] is Iterable
            ? (json[r'authors'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<TopNewsAPI200ResponseTopNewsInnerNewsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TopNewsAPI200ResponseTopNewsInnerNewsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TopNewsAPI200ResponseTopNewsInnerNewsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TopNewsAPI200ResponseTopNewsInnerNewsInner> mapFromJson(dynamic json) {
    final map = <String, TopNewsAPI200ResponseTopNewsInnerNewsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TopNewsAPI200ResponseTopNewsInnerNewsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TopNewsAPI200ResponseTopNewsInnerNewsInner-objects as value to a dart map
  static Map<String, List<TopNewsAPI200ResponseTopNewsInnerNewsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TopNewsAPI200ResponseTopNewsInnerNewsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TopNewsAPI200ResponseTopNewsInnerNewsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

