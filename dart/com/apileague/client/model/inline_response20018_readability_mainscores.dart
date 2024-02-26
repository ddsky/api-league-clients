//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse20018ReadabilityMainscores {
  /// Returns a new [InlineResponse20018ReadabilityMainscores] instance.
  InlineResponse20018ReadabilityMainscores({
    this.totalPossible,
    this.total,
  });

  int totalPossible;

  int total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse20018ReadabilityMainscores &&
     other.totalPossible == totalPossible &&
     other.total == total;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (totalPossible == null ? 0 : totalPossible.hashCode) +
    (total == null ? 0 : total.hashCode);

  @override
  String toString() => 'InlineResponse20018ReadabilityMainscores[totalPossible=$totalPossible, total=$total]';

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

  /// Returns a new [InlineResponse20018ReadabilityMainscores] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse20018ReadabilityMainscores fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse20018ReadabilityMainscores(
        totalPossible: mapValueOfType<int>(json, r'total_possible'),
        total: mapValueOfType<int>(json, r'total'),
      );
    }
    return null;
  }

  static List<InlineResponse20018ReadabilityMainscores> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse20018ReadabilityMainscores.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse20018ReadabilityMainscores>[];

  static Map<String, InlineResponse20018ReadabilityMainscores> mapFromJson(dynamic json) {
    final map = <String, InlineResponse20018ReadabilityMainscores>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse20018ReadabilityMainscores.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse20018ReadabilityMainscores-objects as value to a dart map
  static Map<String, List<InlineResponse20018ReadabilityMainscores>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse20018ReadabilityMainscores>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse20018ReadabilityMainscores.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

