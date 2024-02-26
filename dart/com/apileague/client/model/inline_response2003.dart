//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse2003 {
  /// Returns a new [InlineResponse2003] instance.
  InlineResponse2003({
    this.title,
    this.text,
    this.url,
    this.image,
    this.publishDate,
    this.author,
    this.language,
    this.sourceCountry,
    this.sentiment,
  });

  String title;

  String text;

  String url;

  String image;

  String publishDate;

  String author;

  String language;

  String sourceCountry;

  num sentiment;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse2003 &&
     other.title == title &&
     other.text == text &&
     other.url == url &&
     other.image == image &&
     other.publishDate == publishDate &&
     other.author == author &&
     other.language == language &&
     other.sourceCountry == sourceCountry &&
     other.sentiment == sentiment;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (title == null ? 0 : title.hashCode) +
    (text == null ? 0 : text.hashCode) +
    (url == null ? 0 : url.hashCode) +
    (image == null ? 0 : image.hashCode) +
    (publishDate == null ? 0 : publishDate.hashCode) +
    (author == null ? 0 : author.hashCode) +
    (language == null ? 0 : language.hashCode) +
    (sourceCountry == null ? 0 : sourceCountry.hashCode) +
    (sentiment == null ? 0 : sentiment.hashCode);

  @override
  String toString() => 'InlineResponse2003[title=$title, text=$text, url=$url, image=$image, publishDate=$publishDate, author=$author, language=$language, sourceCountry=$sourceCountry, sentiment=$sentiment]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (title != null) {
      json[r'title'] = title;
    }
    if (text != null) {
      json[r'text'] = text;
    }
    if (url != null) {
      json[r'url'] = url;
    }
    if (image != null) {
      json[r'image'] = image;
    }
    if (publishDate != null) {
      json[r'publish_date'] = publishDate;
    }
    if (author != null) {
      json[r'author'] = author;
    }
    if (language != null) {
      json[r'language'] = language;
    }
    if (sourceCountry != null) {
      json[r'source_country'] = sourceCountry;
    }
    if (sentiment != null) {
      json[r'sentiment'] = sentiment;
    }
    return json;
  }

  /// Returns a new [InlineResponse2003] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse2003 fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse2003(
        title: mapValueOfType<String>(json, r'title'),
        text: mapValueOfType<String>(json, r'text'),
        url: mapValueOfType<String>(json, r'url'),
        image: mapValueOfType<String>(json, r'image'),
        publishDate: mapValueOfType<String>(json, r'publish_date'),
        author: mapValueOfType<String>(json, r'author'),
        language: mapValueOfType<String>(json, r'language'),
        sourceCountry: mapValueOfType<String>(json, r'source_country'),
        sentiment: json[r'sentiment'] == null
          ? null
          : num.parse(json[r'sentiment'].toString()),
      );
    }
    return null;
  }

  static List<InlineResponse2003> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse2003.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse2003>[];

  static Map<String, InlineResponse2003> mapFromJson(dynamic json) {
    final map = <String, InlineResponse2003>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse2003.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse2003-objects as value to a dart map
  static Map<String, List<InlineResponse2003>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse2003>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse2003.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

