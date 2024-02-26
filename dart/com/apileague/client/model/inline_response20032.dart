//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse20032 {
  /// Returns a new [InlineResponse20032] instance.
  InlineResponse20032({
    this.status,
  });

  String status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse20032 &&
     other.status == status;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (status == null ? 0 : status.hashCode);

  @override
  String toString() => 'InlineResponse20032[status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (status != null) {
      json[r'status'] = status;
    }
    return json;
  }

  /// Returns a new [InlineResponse20032] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse20032 fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse20032(
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<InlineResponse20032> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse20032.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse20032>[];

  static Map<String, InlineResponse20032> mapFromJson(dynamic json) {
    final map = <String, InlineResponse20032>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse20032.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse20032-objects as value to a dart map
  static Map<String, List<InlineResponse20032>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse20032>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse20032.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

