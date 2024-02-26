//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse20014Authors {
  /// Returns a new [InlineResponse20014Authors] instance.
  InlineResponse20014Authors({
    this.link,
    this.name,
  });

  String link;

  String name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse20014Authors &&
     other.link == link &&
     other.name == name;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (link == null ? 0 : link.hashCode) +
    (name == null ? 0 : name.hashCode);

  @override
  String toString() => 'InlineResponse20014Authors[link=$link, name=$name]';

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

  /// Returns a new [InlineResponse20014Authors] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse20014Authors fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse20014Authors(
        link: mapValueOfType<String>(json, r'link'),
        name: mapValueOfType<String>(json, r'name'),
      );
    }
    return null;
  }

  static List<InlineResponse20014Authors> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse20014Authors.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse20014Authors>[];

  static Map<String, InlineResponse20014Authors> mapFromJson(dynamic json) {
    final map = <String, InlineResponse20014Authors>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse20014Authors.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse20014Authors-objects as value to a dart map
  static Map<String, List<InlineResponse20014Authors>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse20014Authors>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse20014Authors.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

