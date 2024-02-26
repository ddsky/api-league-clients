//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse20029 {
  /// Returns a new [InlineResponse20029] instance.
  InlineResponse20029({
    this.specificColor,
    this.mainColor,
    this.hexCode,
  });

  String specificColor;

  String mainColor;

  String hexCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse20029 &&
     other.specificColor == specificColor &&
     other.mainColor == mainColor &&
     other.hexCode == hexCode;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (specificColor == null ? 0 : specificColor.hashCode) +
    (mainColor == null ? 0 : mainColor.hashCode) +
    (hexCode == null ? 0 : hexCode.hashCode);

  @override
  String toString() => 'InlineResponse20029[specificColor=$specificColor, mainColor=$mainColor, hexCode=$hexCode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (specificColor != null) {
      json[r'specific_color'] = specificColor;
    }
    if (mainColor != null) {
      json[r'main_color'] = mainColor;
    }
    if (hexCode != null) {
      json[r'hex_code'] = hexCode;
    }
    return json;
  }

  /// Returns a new [InlineResponse20029] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse20029 fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse20029(
        specificColor: mapValueOfType<String>(json, r'specific_color'),
        mainColor: mapValueOfType<String>(json, r'main_color'),
        hexCode: mapValueOfType<String>(json, r'hex_code'),
      );
    }
    return null;
  }

  static List<InlineResponse20029> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse20029.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse20029>[];

  static Map<String, InlineResponse20029> mapFromJson(dynamic json) {
    final map = <String, InlineResponse20029>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse20029.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse20029-objects as value to a dart map
  static Map<String, List<InlineResponse20029>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse20029>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse20029.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

