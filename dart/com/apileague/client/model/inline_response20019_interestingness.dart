//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse20019Interestingness {
  /// Returns a new [InlineResponse20019Interestingness] instance.
  InlineResponse20019Interestingness({
    this.mainscores,
    this.subscores,
  });

  InlineResponse20019SkimmabilityMainscores mainscores;

  InlineResponse20019InterestingnessSubscores subscores;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse20019Interestingness &&
     other.mainscores == mainscores &&
     other.subscores == subscores;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (mainscores == null ? 0 : mainscores.hashCode) +
    (subscores == null ? 0 : subscores.hashCode);

  @override
  String toString() => 'InlineResponse20019Interestingness[mainscores=$mainscores, subscores=$subscores]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (mainscores != null) {
      json[r'mainscores'] = mainscores;
    }
    if (subscores != null) {
      json[r'subscores'] = subscores;
    }
    return json;
  }

  /// Returns a new [InlineResponse20019Interestingness] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse20019Interestingness fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse20019Interestingness(
        mainscores: InlineResponse20019SkimmabilityMainscores.fromJson(json[r'mainscores']),
        subscores: InlineResponse20019InterestingnessSubscores.fromJson(json[r'subscores']),
      );
    }
    return null;
  }

  static List<InlineResponse20019Interestingness> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse20019Interestingness.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse20019Interestingness>[];

  static Map<String, InlineResponse20019Interestingness> mapFromJson(dynamic json) {
    final map = <String, InlineResponse20019Interestingness>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse20019Interestingness.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse20019Interestingness-objects as value to a dart map
  static Map<String, List<InlineResponse20019Interestingness>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse20019Interestingness>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse20019Interestingness.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

