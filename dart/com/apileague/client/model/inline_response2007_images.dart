//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse2007Images {
  /// Returns a new [InlineResponse2007Images] instance.
  InlineResponse2007Images({
    this.width,
    this.url,
    this.height,
  });

  int width;

  String url;

  int height;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse2007Images &&
     other.width == width &&
     other.url == url &&
     other.height == height;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (width == null ? 0 : width.hashCode) +
    (url == null ? 0 : url.hashCode) +
    (height == null ? 0 : height.hashCode);

  @override
  String toString() => 'InlineResponse2007Images[width=$width, url=$url, height=$height]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (width != null) {
      json[r'width'] = width;
    }
    if (url != null) {
      json[r'url'] = url;
    }
    if (height != null) {
      json[r'height'] = height;
    }
    return json;
  }

  /// Returns a new [InlineResponse2007Images] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse2007Images fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse2007Images(
        width: mapValueOfType<int>(json, r'width'),
        url: mapValueOfType<String>(json, r'url'),
        height: mapValueOfType<int>(json, r'height'),
      );
    }
    return null;
  }

  static List<InlineResponse2007Images> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse2007Images.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse2007Images>[];

  static Map<String, InlineResponse2007Images> mapFromJson(dynamic json) {
    final map = <String, InlineResponse2007Images>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse2007Images.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse2007Images-objects as value to a dart map
  static Map<String, List<InlineResponse2007Images>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse2007Images>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse2007Images.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

