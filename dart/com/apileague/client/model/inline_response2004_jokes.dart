//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse2004Jokes {
  /// Returns a new [InlineResponse2004Jokes] instance.
  InlineResponse2004Jokes({
    this.joke,
  });

  String joke;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse2004Jokes &&
     other.joke == joke;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (joke == null ? 0 : joke.hashCode);

  @override
  String toString() => 'InlineResponse2004Jokes[joke=$joke]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (joke != null) {
      json[r'joke'] = joke;
    }
    return json;
  }

  /// Returns a new [InlineResponse2004Jokes] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse2004Jokes fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse2004Jokes(
        joke: mapValueOfType<String>(json, r'joke'),
      );
    }
    return null;
  }

  static List<InlineResponse2004Jokes> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse2004Jokes.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse2004Jokes>[];

  static Map<String, InlineResponse2004Jokes> mapFromJson(dynamic json) {
    final map = <String, InlineResponse2004Jokes>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse2004Jokes.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse2004Jokes-objects as value to a dart map
  static Map<String, List<InlineResponse2004Jokes>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse2004Jokes>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse2004Jokes.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

