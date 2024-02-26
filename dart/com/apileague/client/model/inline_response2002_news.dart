//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse2002News {
  /// Returns a new [InlineResponse2002News] instance.
  InlineResponse2002News({
    this.summary,
    this.image,
    this.sentiment,
    this.sourceCountry,
    this.language,
    this.id,
    this.text,
    this.title,
    this.publishDate,
    this.url,
    this.authors = const [],
  });

  String summary;

  String image;

  num sentiment;

  String sourceCountry;

  String language;

  int id;

  String text;

  String title;

  String publishDate;

  String url;

  List<String> authors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse2002News &&
     other.summary == summary &&
     other.image == image &&
     other.sentiment == sentiment &&
     other.sourceCountry == sourceCountry &&
     other.language == language &&
     other.id == id &&
     other.text == text &&
     other.title == title &&
     other.publishDate == publishDate &&
     other.url == url &&
     other.authors == authors;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (summary == null ? 0 : summary.hashCode) +
    (image == null ? 0 : image.hashCode) +
    (sentiment == null ? 0 : sentiment.hashCode) +
    (sourceCountry == null ? 0 : sourceCountry.hashCode) +
    (language == null ? 0 : language.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (text == null ? 0 : text.hashCode) +
    (title == null ? 0 : title.hashCode) +
    (publishDate == null ? 0 : publishDate.hashCode) +
    (url == null ? 0 : url.hashCode) +
    (authors == null ? 0 : authors.hashCode);

  @override
  String toString() => 'InlineResponse2002News[summary=$summary, image=$image, sentiment=$sentiment, sourceCountry=$sourceCountry, language=$language, id=$id, text=$text, title=$title, publishDate=$publishDate, url=$url, authors=$authors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (summary != null) {
      json[r'summary'] = summary;
    }
    if (image != null) {
      json[r'image'] = image;
    }
    if (sentiment != null) {
      json[r'sentiment'] = sentiment;
    }
    if (sourceCountry != null) {
      json[r'source_country'] = sourceCountry;
    }
    if (language != null) {
      json[r'language'] = language;
    }
    if (id != null) {
      json[r'id'] = id;
    }
    if (text != null) {
      json[r'text'] = text;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (publishDate != null) {
      json[r'publish_date'] = publishDate;
    }
    if (url != null) {
      json[r'url'] = url;
    }
    if (authors != null) {
      json[r'authors'] = authors;
    }
    return json;
  }

  /// Returns a new [InlineResponse2002News] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse2002News fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse2002News(
        summary: mapValueOfType<String>(json, r'summary'),
        image: mapValueOfType<String>(json, r'image'),
        sentiment: json[r'sentiment'] == null
          ? null
          : num.parse(json[r'sentiment'].toString()),
        sourceCountry: mapValueOfType<String>(json, r'source_country'),
        language: mapValueOfType<String>(json, r'language'),
        id: mapValueOfType<int>(json, r'id'),
        text: mapValueOfType<String>(json, r'text'),
        title: mapValueOfType<String>(json, r'title'),
        publishDate: mapValueOfType<String>(json, r'publish_date'),
        url: mapValueOfType<String>(json, r'url'),
        authors: json[r'authors'] is List
          ? (json[r'authors'] as List).cast<String>()
          : null,
      );
    }
    return null;
  }

  static List<InlineResponse2002News> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse2002News.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse2002News>[];

  static Map<String, InlineResponse2002News> mapFromJson(dynamic json) {
    final map = <String, InlineResponse2002News>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse2002News.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse2002News-objects as value to a dart map
  static Map<String, List<InlineResponse2002News>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse2002News>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse2002News.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

