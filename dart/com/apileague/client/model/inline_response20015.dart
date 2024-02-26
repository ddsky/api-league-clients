//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse20015 {
  /// Returns a new [InlineResponse20015] instance.
  InlineResponse20015({
    this.results = const [],
  });

  List<InlineResponse20015Results> results;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse20015 &&
     other.results == results;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (results == null ? 0 : results.hashCode);

  @override
  String toString() => 'InlineResponse20015[results=$results]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (results != null) {
      json[r'results'] = results;
    }
    return json;
  }

  /// Returns a new [InlineResponse20015] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse20015 fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse20015(
        results: InlineResponse20015Results.listFromJson(json[r'results']),
      );
    }
    return null;
  }

  static List<InlineResponse20015> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse20015.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse20015>[];

  static Map<String, InlineResponse20015> mapFromJson(dynamic json) {
    final map = <String, InlineResponse20015>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse20015.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse20015-objects as value to a dart map
  static Map<String, List<InlineResponse20015>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse20015>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse20015.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

