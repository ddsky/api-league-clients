//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse200 {
  /// Returns a new [InlineResponse200] instance.
  InlineResponse200({
    this.available,
    this.number,
    this.offset,
    this.books = const [],
  });

  int available;

  int number;

  int offset;

  List<InlineResponse200Books> books;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse200 &&
     other.available == available &&
     other.number == number &&
     other.offset == offset &&
     other.books == books;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (available == null ? 0 : available.hashCode) +
    (number == null ? 0 : number.hashCode) +
    (offset == null ? 0 : offset.hashCode) +
    (books == null ? 0 : books.hashCode);

  @override
  String toString() => 'InlineResponse200[available=$available, number=$number, offset=$offset, books=$books]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (available != null) {
      json[r'available'] = available;
    }
    if (number != null) {
      json[r'number'] = number;
    }
    if (offset != null) {
      json[r'offset'] = offset;
    }
    if (books != null) {
      json[r'books'] = books;
    }
    return json;
  }

  /// Returns a new [InlineResponse200] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse200 fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse200(
        available: mapValueOfType<int>(json, r'available'),
        number: mapValueOfType<int>(json, r'number'),
        offset: mapValueOfType<int>(json, r'offset'),
        books: InlineResponse200Books.listFromJson(json[r'books']),
      );
    }
    return null;
  }

  static List<InlineResponse200> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse200.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse200>[];

  static Map<String, InlineResponse200> mapFromJson(dynamic json) {
    final map = <String, InlineResponse200>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse200.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse200-objects as value to a dart map
  static Map<String, List<InlineResponse200>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse200>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse200.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

