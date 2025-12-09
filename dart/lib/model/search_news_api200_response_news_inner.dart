//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchNewsAPI200ResponseNewsInner {
  /// Returns a new [SearchNewsAPI200ResponseNewsInner] instance.
  SearchNewsAPI200ResponseNewsInner({
    this.id,
    this.title,
    this.text,
    this.summary,
    this.url,
    this.image,
    this.video,
    this.publishDate,
    this.authors = const [],
    this.category,
    this.language,
    this.sourceCountry,
    this.sentiment,
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

  String? video;

  String? publishDate;

  List<String> authors;

  String? category;

  String? language;

  String? sourceCountry;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? sentiment;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchNewsAPI200ResponseNewsInner &&
    other.id == id &&
    other.title == title &&
    other.text == text &&
    other.summary == summary &&
    other.url == url &&
    other.image == image &&
    other.video == video &&
    other.publishDate == publishDate &&
    _deepEquality.equals(other.authors, authors) &&
    other.category == category &&
    other.language == language &&
    other.sourceCountry == sourceCountry &&
    other.sentiment == sentiment;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (text == null ? 0 : text!.hashCode) +
    (summary == null ? 0 : summary!.hashCode) +
    (url == null ? 0 : url!.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (video == null ? 0 : video!.hashCode) +
    (publishDate == null ? 0 : publishDate!.hashCode) +
    (authors.hashCode) +
    (category == null ? 0 : category!.hashCode) +
    (language == null ? 0 : language!.hashCode) +
    (sourceCountry == null ? 0 : sourceCountry!.hashCode) +
    (sentiment == null ? 0 : sentiment!.hashCode);

  @override
  String toString() => 'SearchNewsAPI200ResponseNewsInner[id=$id, title=$title, text=$text, summary=$summary, url=$url, image=$image, video=$video, publishDate=$publishDate, authors=$authors, category=$category, language=$language, sourceCountry=$sourceCountry, sentiment=$sentiment]';

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
    if (this.video != null) {
      json[r'video'] = this.video;
    } else {
      json[r'video'] = null;
    }
    if (this.publishDate != null) {
      json[r'publish_date'] = this.publishDate;
    } else {
      json[r'publish_date'] = null;
    }
      json[r'authors'] = this.authors;
    if (this.category != null) {
      json[r'category'] = this.category;
    } else {
      json[r'category'] = null;
    }
    if (this.language != null) {
      json[r'language'] = this.language;
    } else {
      json[r'language'] = null;
    }
    if (this.sourceCountry != null) {
      json[r'source_country'] = this.sourceCountry;
    } else {
      json[r'source_country'] = null;
    }
    if (this.sentiment != null) {
      json[r'sentiment'] = this.sentiment;
    } else {
      json[r'sentiment'] = null;
    }
    return json;
  }

  /// Returns a new [SearchNewsAPI200ResponseNewsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchNewsAPI200ResponseNewsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchNewsAPI200ResponseNewsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchNewsAPI200ResponseNewsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchNewsAPI200ResponseNewsInner(
        id: mapValueOfType<int>(json, r'id'),
        title: mapValueOfType<String>(json, r'title'),
        text: mapValueOfType<String>(json, r'text'),
        summary: mapValueOfType<String>(json, r'summary'),
        url: mapValueOfType<String>(json, r'url'),
        image: mapValueOfType<String>(json, r'image'),
        video: mapValueOfType<String>(json, r'video'),
        publishDate: mapValueOfType<String>(json, r'publish_date'),
        authors: json[r'authors'] is Iterable
            ? (json[r'authors'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        category: mapValueOfType<String>(json, r'category'),
        language: mapValueOfType<String>(json, r'language'),
        sourceCountry: mapValueOfType<String>(json, r'source_country'),
        sentiment: num.parse('${json[r'sentiment']}'),
      );
    }
    return null;
  }

  static List<SearchNewsAPI200ResponseNewsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchNewsAPI200ResponseNewsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchNewsAPI200ResponseNewsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchNewsAPI200ResponseNewsInner> mapFromJson(dynamic json) {
    final map = <String, SearchNewsAPI200ResponseNewsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchNewsAPI200ResponseNewsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchNewsAPI200ResponseNewsInner-objects as value to a dart map
  static Map<String, List<SearchNewsAPI200ResponseNewsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchNewsAPI200ResponseNewsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchNewsAPI200ResponseNewsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

