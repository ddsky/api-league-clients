//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse20017Sentences {
  /// Returns a new [InlineResponse20017Sentences] instance.
  InlineResponse20017Sentences({
    this.length,
    this.sentiment,
    this.offset,
    this.confidence,
  });

  int length;

  String sentiment;

  int offset;

  int confidence;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse20017Sentences &&
     other.length == length &&
     other.sentiment == sentiment &&
     other.offset == offset &&
     other.confidence == confidence;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (length == null ? 0 : length.hashCode) +
    (sentiment == null ? 0 : sentiment.hashCode) +
    (offset == null ? 0 : offset.hashCode) +
    (confidence == null ? 0 : confidence.hashCode);

  @override
  String toString() => 'InlineResponse20017Sentences[length=$length, sentiment=$sentiment, offset=$offset, confidence=$confidence]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (length != null) {
      json[r'length'] = length;
    }
    if (sentiment != null) {
      json[r'sentiment'] = sentiment;
    }
    if (offset != null) {
      json[r'offset'] = offset;
    }
    if (confidence != null) {
      json[r'confidence'] = confidence;
    }
    return json;
  }

  /// Returns a new [InlineResponse20017Sentences] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse20017Sentences fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse20017Sentences(
        length: mapValueOfType<int>(json, r'length'),
        sentiment: mapValueOfType<String>(json, r'sentiment'),
        offset: mapValueOfType<int>(json, r'offset'),
        confidence: mapValueOfType<int>(json, r'confidence'),
      );
    }
    return null;
  }

  static List<InlineResponse20017Sentences> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse20017Sentences.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse20017Sentences>[];

  static Map<String, InlineResponse20017Sentences> mapFromJson(dynamic json) {
    final map = <String, InlineResponse20017Sentences>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse20017Sentences.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse20017Sentences-objects as value to a dart map
  static Map<String, List<InlineResponse20017Sentences>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse20017Sentences>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse20017Sentences.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

