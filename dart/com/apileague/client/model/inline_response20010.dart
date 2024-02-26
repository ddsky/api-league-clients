//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse20010 {
  /// Returns a new [InlineResponse20010] instance.
  InlineResponse20010({
    this.author,
    this.quote,
  });

  String author;

  String quote;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse20010 &&
     other.author == author &&
     other.quote == quote;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (author == null ? 0 : author.hashCode) +
    (quote == null ? 0 : quote.hashCode);

  @override
  String toString() => 'InlineResponse20010[author=$author, quote=$quote]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (author != null) {
      json[r'author'] = author;
    }
    if (quote != null) {
      json[r'quote'] = quote;
    }
    return json;
  }

  /// Returns a new [InlineResponse20010] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse20010 fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse20010(
        author: mapValueOfType<String>(json, r'author'),
        quote: mapValueOfType<String>(json, r'quote'),
      );
    }
    return null;
  }

  static List<InlineResponse20010> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse20010.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse20010>[];

  static Map<String, InlineResponse20010> mapFromJson(dynamic json) {
    final map = <String, InlineResponse20010>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse20010.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse20010-objects as value to a dart map
  static Map<String, List<InlineResponse20010>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse20010>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse20010.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

