//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse20028License {
  /// Returns a new [InlineResponse20028License] instance.
  InlineResponse20028License({
    this.name,
    this.link,
  });

  String name;

  String link;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse20028License &&
     other.name == name &&
     other.link == link;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (name == null ? 0 : name.hashCode) +
    (link == null ? 0 : link.hashCode);

  @override
  String toString() => 'InlineResponse20028License[name=$name, link=$link]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (name != null) {
      json[r'name'] = name;
    }
    if (link != null) {
      json[r'link'] = link;
    }
    return json;
  }

  /// Returns a new [InlineResponse20028License] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse20028License fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse20028License(
        name: mapValueOfType<String>(json, r'name'),
        link: mapValueOfType<String>(json, r'link'),
      );
    }
    return null;
  }

  static List<InlineResponse20028License> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse20028License.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse20028License>[];

  static Map<String, InlineResponse20028License> mapFromJson(dynamic json) {
    final map = <String, InlineResponse20028License>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse20028License.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse20028License-objects as value to a dart map
  static Map<String, List<InlineResponse20028License>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse20028License>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse20028License.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

