//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse20017Document {
  /// Returns a new [InlineResponse20017Document] instance.
  InlineResponse20017Document({
    this.sentiment,
    this.confidence,
    this.averageConfidence,
  });

  String sentiment;

  int confidence;

  int averageConfidence;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse20017Document &&
     other.sentiment == sentiment &&
     other.confidence == confidence &&
     other.averageConfidence == averageConfidence;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (sentiment == null ? 0 : sentiment.hashCode) +
    (confidence == null ? 0 : confidence.hashCode) +
    (averageConfidence == null ? 0 : averageConfidence.hashCode);

  @override
  String toString() => 'InlineResponse20017Document[sentiment=$sentiment, confidence=$confidence, averageConfidence=$averageConfidence]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (sentiment != null) {
      json[r'sentiment'] = sentiment;
    }
    if (confidence != null) {
      json[r'confidence'] = confidence;
    }
    if (averageConfidence != null) {
      json[r'average_confidence'] = averageConfidence;
    }
    return json;
  }

  /// Returns a new [InlineResponse20017Document] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse20017Document fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse20017Document(
        sentiment: mapValueOfType<String>(json, r'sentiment'),
        confidence: mapValueOfType<int>(json, r'confidence'),
        averageConfidence: mapValueOfType<int>(json, r'average_confidence'),
      );
    }
    return null;
  }

  static List<InlineResponse20017Document> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse20017Document.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse20017Document>[];

  static Map<String, InlineResponse20017Document> mapFromJson(dynamic json) {
    final map = <String, InlineResponse20017Document>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse20017Document.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse20017Document-objects as value to a dart map
  static Map<String, List<InlineResponse20017Document>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse20017Document>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse20017Document.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

