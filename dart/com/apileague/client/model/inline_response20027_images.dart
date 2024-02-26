//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse20027Images {
  /// Returns a new [InlineResponse20027Images] instance.
  InlineResponse20027Images({
    this.width,
    this.license,
    this.thumbnail,
    this.id,
    this.url,
    this.height,
  });

  int width;

  InlineResponse20027License license;

  String thumbnail;

  String id;

  String url;

  int height;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse20027Images &&
     other.width == width &&
     other.license == license &&
     other.thumbnail == thumbnail &&
     other.id == id &&
     other.url == url &&
     other.height == height;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (width == null ? 0 : width.hashCode) +
    (license == null ? 0 : license.hashCode) +
    (thumbnail == null ? 0 : thumbnail.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (url == null ? 0 : url.hashCode) +
    (height == null ? 0 : height.hashCode);

  @override
  String toString() => 'InlineResponse20027Images[width=$width, license=$license, thumbnail=$thumbnail, id=$id, url=$url, height=$height]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (width != null) {
      json[r'width'] = width;
    }
    if (license != null) {
      json[r'license'] = license;
    }
    if (thumbnail != null) {
      json[r'thumbnail'] = thumbnail;
    }
    if (id != null) {
      json[r'id'] = id;
    }
    if (url != null) {
      json[r'url'] = url;
    }
    if (height != null) {
      json[r'height'] = height;
    }
    return json;
  }

  /// Returns a new [InlineResponse20027Images] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse20027Images fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse20027Images(
        width: mapValueOfType<int>(json, r'width'),
        license: InlineResponse20027License.fromJson(json[r'license']),
        thumbnail: mapValueOfType<String>(json, r'thumbnail'),
        id: mapValueOfType<String>(json, r'id'),
        url: mapValueOfType<String>(json, r'url'),
        height: mapValueOfType<int>(json, r'height'),
      );
    }
    return null;
  }

  static List<InlineResponse20027Images> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse20027Images.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse20027Images>[];

  static Map<String, InlineResponse20027Images> mapFromJson(dynamic json) {
    final map = <String, InlineResponse20027Images>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse20027Images.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse20027Images-objects as value to a dart map
  static Map<String, List<InlineResponse20027Images>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse20027Images>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse20027Images.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

