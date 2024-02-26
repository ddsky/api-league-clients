//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse20024 {
  /// Returns a new [InlineResponse20024] instance.
  InlineResponse20024({
    this.original,
    this.stemmed,
  });

  String original;

  String stemmed;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse20024 &&
     other.original == original &&
     other.stemmed == stemmed;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (original == null ? 0 : original.hashCode) +
    (stemmed == null ? 0 : stemmed.hashCode);

  @override
  String toString() => 'InlineResponse20024[original=$original, stemmed=$stemmed]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (original != null) {
      json[r'original'] = original;
    }
    if (stemmed != null) {
      json[r'stemmed'] = stemmed;
    }
    return json;
  }

  /// Returns a new [InlineResponse20024] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse20024 fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse20024(
        original: mapValueOfType<String>(json, r'original'),
        stemmed: mapValueOfType<String>(json, r'stemmed'),
      );
    }
    return null;
  }

  static List<InlineResponse20024> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse20024.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse20024>[];

  static Map<String, InlineResponse20024> mapFromJson(dynamic json) {
    final map = <String, InlineResponse20024>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse20024.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse20024-objects as value to a dart map
  static Map<String, List<InlineResponse20024>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse20024>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse20024.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

