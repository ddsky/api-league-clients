//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse20027Entities {
  /// Returns a new [InlineResponse20027Entities] instance.
  InlineResponse20027Entities({
    this.startPosition,
    this.image,
    this.type,
    this.value,
    this.endPosition,
  });

  int startPosition;

  String image;

  String type;

  String value;

  int endPosition;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse20027Entities &&
     other.startPosition == startPosition &&
     other.image == image &&
     other.type == type &&
     other.value == value &&
     other.endPosition == endPosition;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (startPosition == null ? 0 : startPosition.hashCode) +
    (image == null ? 0 : image.hashCode) +
    (type == null ? 0 : type.hashCode) +
    (value == null ? 0 : value.hashCode) +
    (endPosition == null ? 0 : endPosition.hashCode);

  @override
  String toString() => 'InlineResponse20027Entities[startPosition=$startPosition, image=$image, type=$type, value=$value, endPosition=$endPosition]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (startPosition != null) {
      json[r'start_position'] = startPosition;
    }
    if (image != null) {
      json[r'image'] = image;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (value != null) {
      json[r'value'] = value;
    }
    if (endPosition != null) {
      json[r'end_position'] = endPosition;
    }
    return json;
  }

  /// Returns a new [InlineResponse20027Entities] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse20027Entities fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse20027Entities(
        startPosition: mapValueOfType<int>(json, r'start_position'),
        image: mapValueOfType<String>(json, r'image'),
        type: mapValueOfType<String>(json, r'type'),
        value: mapValueOfType<String>(json, r'value'),
        endPosition: mapValueOfType<int>(json, r'end_position'),
      );
    }
    return null;
  }

  static List<InlineResponse20027Entities> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse20027Entities.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse20027Entities>[];

  static Map<String, InlineResponse20027Entities> mapFromJson(dynamic json) {
    final map = <String, InlineResponse20027Entities>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse20027Entities.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse20027Entities-objects as value to a dart map
  static Map<String, List<InlineResponse20027Entities>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse20027Entities>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse20027Entities.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

