//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse2004 {
  /// Returns a new [InlineResponse2004] instance.
  InlineResponse2004({
    this.jokes = const [],
    this.available,
  });

  List<InlineResponse2004Jokes> jokes;

  int available;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse2004 &&
     other.jokes == jokes &&
     other.available == available;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (jokes == null ? 0 : jokes.hashCode) +
    (available == null ? 0 : available.hashCode);

  @override
  String toString() => 'InlineResponse2004[jokes=$jokes, available=$available]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (jokes != null) {
      json[r'jokes'] = jokes;
    }
    if (available != null) {
      json[r'available'] = available;
    }
    return json;
  }

  /// Returns a new [InlineResponse2004] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse2004 fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse2004(
        jokes: InlineResponse2004Jokes.listFromJson(json[r'jokes']),
        available: mapValueOfType<int>(json, r'available'),
      );
    }
    return null;
  }

  static List<InlineResponse2004> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse2004.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse2004>[];

  static Map<String, InlineResponse2004> mapFromJson(dynamic json) {
    final map = <String, InlineResponse2004>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse2004.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse2004-objects as value to a dart map
  static Map<String, List<InlineResponse2004>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse2004>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse2004.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

