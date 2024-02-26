//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse2005Memes {
  /// Returns a new [InlineResponse2005Memes] instance.
  InlineResponse2005Memes({
    this.type,
    this.description,
    this.url,
  });

  String type;

  String description;

  String url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse2005Memes &&
     other.type == type &&
     other.description == description &&
     other.url == url;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (type == null ? 0 : type.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (url == null ? 0 : url.hashCode);

  @override
  String toString() => 'InlineResponse2005Memes[type=$type, description=$description, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (type != null) {
      json[r'type'] = type;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (url != null) {
      json[r'url'] = url;
    }
    return json;
  }

  /// Returns a new [InlineResponse2005Memes] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse2005Memes fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse2005Memes(
        type: mapValueOfType<String>(json, r'type'),
        description: mapValueOfType<String>(json, r'description'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<InlineResponse2005Memes> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse2005Memes.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse2005Memes>[];

  static Map<String, InlineResponse2005Memes> mapFromJson(dynamic json) {
    final map = <String, InlineResponse2005Memes>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse2005Memes.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse2005Memes-objects as value to a dart map
  static Map<String, List<InlineResponse2005Memes>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse2005Memes>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse2005Memes.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

