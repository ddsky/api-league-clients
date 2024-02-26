//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse20018SkimmabilityMainscores {
  /// Returns a new [InlineResponse20018SkimmabilityMainscores] instance.
  InlineResponse20018SkimmabilityMainscores({
    this.totalPossible,
    this.total,
  });

  int totalPossible;

  num total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse20018SkimmabilityMainscores &&
     other.totalPossible == totalPossible &&
     other.total == total;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (totalPossible == null ? 0 : totalPossible.hashCode) +
    (total == null ? 0 : total.hashCode);

  @override
  String toString() => 'InlineResponse20018SkimmabilityMainscores[totalPossible=$totalPossible, total=$total]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (totalPossible != null) {
      json[r'total_possible'] = totalPossible;
    }
    if (total != null) {
      json[r'total'] = total;
    }
    return json;
  }

  /// Returns a new [InlineResponse20018SkimmabilityMainscores] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse20018SkimmabilityMainscores fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse20018SkimmabilityMainscores(
        totalPossible: mapValueOfType<int>(json, r'total_possible'),
        total: json[r'total'] == null
          ? null
          : num.parse(json[r'total'].toString()),
      );
    }
    return null;
  }

  static List<InlineResponse20018SkimmabilityMainscores> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse20018SkimmabilityMainscores.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse20018SkimmabilityMainscores>[];

  static Map<String, InlineResponse20018SkimmabilityMainscores> mapFromJson(dynamic json) {
    final map = <String, InlineResponse20018SkimmabilityMainscores>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse20018SkimmabilityMainscores.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse20018SkimmabilityMainscores-objects as value to a dart map
  static Map<String, List<InlineResponse20018SkimmabilityMainscores>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse20018SkimmabilityMainscores>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse20018SkimmabilityMainscores.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

