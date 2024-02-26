//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse20015Results {
  /// Returns a new [InlineResponse20015Results] instance.
  InlineResponse20015Results({
    this.title,
    this.summary,
    this.url,
  });

  String title;

  String summary;

  String url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse20015Results &&
     other.title == title &&
     other.summary == summary &&
     other.url == url;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (title == null ? 0 : title.hashCode) +
    (summary == null ? 0 : summary.hashCode) +
    (url == null ? 0 : url.hashCode);

  @override
  String toString() => 'InlineResponse20015Results[title=$title, summary=$summary, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (title != null) {
      json[r'title'] = title;
    }
    if (summary != null) {
      json[r'summary'] = summary;
    }
    if (url != null) {
      json[r'url'] = url;
    }
    return json;
  }

  /// Returns a new [InlineResponse20015Results] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse20015Results fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse20015Results(
        title: mapValueOfType<String>(json, r'title'),
        summary: mapValueOfType<String>(json, r'summary'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<InlineResponse20015Results> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse20015Results.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse20015Results>[];

  static Map<String, InlineResponse20015Results> mapFromJson(dynamic json) {
    final map = <String, InlineResponse20015Results>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse20015Results.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse20015Results-objects as value to a dart map
  static Map<String, List<InlineResponse20015Results>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse20015Results>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse20015Results.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

