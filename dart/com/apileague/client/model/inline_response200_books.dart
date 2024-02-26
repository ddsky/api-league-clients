//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse200Books {
  /// Returns a new [InlineResponse200Books] instance.
  InlineResponse200Books({
    this.title,
    this.image,
    this.id,
  });

  String title;

  String image;

  int id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse200Books &&
     other.title == title &&
     other.image == image &&
     other.id == id;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (title == null ? 0 : title.hashCode) +
    (image == null ? 0 : image.hashCode) +
    (id == null ? 0 : id.hashCode);

  @override
  String toString() => 'InlineResponse200Books[title=$title, image=$image, id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (title != null) {
      json[r'title'] = title;
    }
    if (image != null) {
      json[r'image'] = image;
    }
    if (id != null) {
      json[r'id'] = id;
    }
    return json;
  }

  /// Returns a new [InlineResponse200Books] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse200Books fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse200Books(
        title: mapValueOfType<String>(json, r'title'),
        image: mapValueOfType<String>(json, r'image'),
        id: mapValueOfType<int>(json, r'id'),
      );
    }
    return null;
  }

  static List<InlineResponse200Books> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse200Books.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse200Books>[];

  static Map<String, InlineResponse200Books> mapFromJson(dynamic json) {
    final map = <String, InlineResponse200Books>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse200Books.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse200Books-objects as value to a dart map
  static Map<String, List<InlineResponse200Books>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse200Books>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse200Books.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

