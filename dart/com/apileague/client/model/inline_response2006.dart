//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse2006 {
  /// Returns a new [InlineResponse2006] instance.
  InlineResponse2006({
    this.description,
    this.url,
    this.type,
    this.width,
    this.height,
    this.ratio,
  });

  String description;

  String url;

  String type;

  int width;

  int height;

  num ratio;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse2006 &&
     other.description == description &&
     other.url == url &&
     other.type == type &&
     other.width == width &&
     other.height == height &&
     other.ratio == ratio;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (description == null ? 0 : description.hashCode) +
    (url == null ? 0 : url.hashCode) +
    (type == null ? 0 : type.hashCode) +
    (width == null ? 0 : width.hashCode) +
    (height == null ? 0 : height.hashCode) +
    (ratio == null ? 0 : ratio.hashCode);

  @override
  String toString() => 'InlineResponse2006[description=$description, url=$url, type=$type, width=$width, height=$height, ratio=$ratio]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (description != null) {
      json[r'description'] = description;
    }
    if (url != null) {
      json[r'url'] = url;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (width != null) {
      json[r'width'] = width;
    }
    if (height != null) {
      json[r'height'] = height;
    }
    if (ratio != null) {
      json[r'ratio'] = ratio;
    }
    return json;
  }

  /// Returns a new [InlineResponse2006] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse2006 fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse2006(
        description: mapValueOfType<String>(json, r'description'),
        url: mapValueOfType<String>(json, r'url'),
        type: mapValueOfType<String>(json, r'type'),
        width: mapValueOfType<int>(json, r'width'),
        height: mapValueOfType<int>(json, r'height'),
        ratio: json[r'ratio'] == null
          ? null
          : num.parse(json[r'ratio'].toString()),
      );
    }
    return null;
  }

  static List<InlineResponse2006> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse2006.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse2006>[];

  static Map<String, InlineResponse2006> mapFromJson(dynamic json) {
    final map = <String, InlineResponse2006>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse2006.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse2006-objects as value to a dart map
  static Map<String, List<InlineResponse2006>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse2006>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse2006.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

