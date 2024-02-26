//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse20030 {
  /// Returns a new [InlineResponse20030] instance.
  InlineResponse20030({
    this.targetAmount,
    this.targetUnit,
  });

  num targetAmount;

  String targetUnit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse20030 &&
     other.targetAmount == targetAmount &&
     other.targetUnit == targetUnit;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (targetAmount == null ? 0 : targetAmount.hashCode) +
    (targetUnit == null ? 0 : targetUnit.hashCode);

  @override
  String toString() => 'InlineResponse20030[targetAmount=$targetAmount, targetUnit=$targetUnit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (targetAmount != null) {
      json[r'target_amount'] = targetAmount;
    }
    if (targetUnit != null) {
      json[r'target_unit'] = targetUnit;
    }
    return json;
  }

  /// Returns a new [InlineResponse20030] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse20030 fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse20030(
        targetAmount: json[r'target_amount'] == null
          ? null
          : num.parse(json[r'target_amount'].toString()),
        targetUnit: mapValueOfType<String>(json, r'target_unit'),
      );
    }
    return null;
  }

  static List<InlineResponse20030> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse20030.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse20030>[];

  static Map<String, InlineResponse20030> mapFromJson(dynamic json) {
    final map = <String, InlineResponse20030>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse20030.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse20030-objects as value to a dart map
  static Map<String, List<InlineResponse20030>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse20030>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse20030.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

