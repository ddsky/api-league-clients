//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse20013Authors {
  /// Returns a new [InlineResponse20013Authors] instance.
  InlineResponse20013Authors({
    this.link,
    this.name,
  });

  String link;

  String name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse20013Authors &&
     other.link == link &&
     other.name == name;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (link == null ? 0 : link.hashCode) +
    (name == null ? 0 : name.hashCode);

  @override
  String toString() => 'InlineResponse20013Authors[link=$link, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (link != null) {
      json[r'link'] = link;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    return json;
  }

  /// Returns a new [InlineResponse20013Authors] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse20013Authors fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse20013Authors(
        link: mapValueOfType<String>(json, r'link'),
        name: mapValueOfType<String>(json, r'name'),
      );
    }
    return null;
  }

  static List<InlineResponse20013Authors> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse20013Authors.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse20013Authors>[];

  static Map<String, InlineResponse20013Authors> mapFromJson(dynamic json) {
    final map = <String, InlineResponse20013Authors>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse20013Authors.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse20013Authors-objects as value to a dart map
  static Map<String, List<InlineResponse20013Authors>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse20013Authors>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse20013Authors.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

