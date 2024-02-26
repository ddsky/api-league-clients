//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse20012 {
  /// Returns a new [InlineResponse20012] instance.
  InlineResponse20012({
    this.title,
    this.mainText,
    this.mainHtml,
    this.images = const [],
  });

  String title;

  String mainText;

  String mainHtml;

  List<String> images;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse20012 &&
     other.title == title &&
     other.mainText == mainText &&
     other.mainHtml == mainHtml &&
     other.images == images;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (title == null ? 0 : title.hashCode) +
    (mainText == null ? 0 : mainText.hashCode) +
    (mainHtml == null ? 0 : mainHtml.hashCode) +
    (images == null ? 0 : images.hashCode);

  @override
  String toString() => 'InlineResponse20012[title=$title, mainText=$mainText, mainHtml=$mainHtml, images=$images]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (title != null) {
      json[r'title'] = title;
    }
    if (mainText != null) {
      json[r'main_text'] = mainText;
    }
    if (mainHtml != null) {
      json[r'main_html'] = mainHtml;
    }
    if (images != null) {
      json[r'images'] = images;
    }
    return json;
  }

  /// Returns a new [InlineResponse20012] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse20012 fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse20012(
        title: mapValueOfType<String>(json, r'title'),
        mainText: mapValueOfType<String>(json, r'main_text'),
        mainHtml: mapValueOfType<String>(json, r'main_html'),
        images: json[r'images'] is List
          ? (json[r'images'] as List).cast<String>()
          : null,
      );
    }
    return null;
  }

  static List<InlineResponse20012> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse20012.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse20012>[];

  static Map<String, InlineResponse20012> mapFromJson(dynamic json) {
    final map = <String, InlineResponse20012>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse20012.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse20012-objects as value to a dart map
  static Map<String, List<InlineResponse20012>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse20012>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse20012.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

