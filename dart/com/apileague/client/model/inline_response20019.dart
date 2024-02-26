//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse20019 {
  /// Returns a new [InlineResponse20019] instance.
  InlineResponse20019({
    this.numberOfWords,
    this.numberOfSentences,
    this.readability,
    this.skimmability,
    this.interestingness,
    this.style,
    this.totalScore,
  });

  int numberOfWords;

  int numberOfSentences;

  InlineResponse20019Readability readability;

  InlineResponse20019Skimmability skimmability;

  InlineResponse20019Interestingness interestingness;

  InlineResponse20019Style style;

  num totalScore;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse20019 &&
     other.numberOfWords == numberOfWords &&
     other.numberOfSentences == numberOfSentences &&
     other.readability == readability &&
     other.skimmability == skimmability &&
     other.interestingness == interestingness &&
     other.style == style &&
     other.totalScore == totalScore;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (numberOfWords == null ? 0 : numberOfWords.hashCode) +
    (numberOfSentences == null ? 0 : numberOfSentences.hashCode) +
    (readability == null ? 0 : readability.hashCode) +
    (skimmability == null ? 0 : skimmability.hashCode) +
    (interestingness == null ? 0 : interestingness.hashCode) +
    (style == null ? 0 : style.hashCode) +
    (totalScore == null ? 0 : totalScore.hashCode);

  @override
  String toString() => 'InlineResponse20019[numberOfWords=$numberOfWords, numberOfSentences=$numberOfSentences, readability=$readability, skimmability=$skimmability, interestingness=$interestingness, style=$style, totalScore=$totalScore]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (numberOfWords != null) {
      json[r'number_of_words'] = numberOfWords;
    }
    if (numberOfSentences != null) {
      json[r'number_of_sentences'] = numberOfSentences;
    }
    if (readability != null) {
      json[r'readability'] = readability;
    }
    if (skimmability != null) {
      json[r'skimmability'] = skimmability;
    }
    if (interestingness != null) {
      json[r'interestingness'] = interestingness;
    }
    if (style != null) {
      json[r'style'] = style;
    }
    if (totalScore != null) {
      json[r'total_score'] = totalScore;
    }
    return json;
  }

  /// Returns a new [InlineResponse20019] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse20019 fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse20019(
        numberOfWords: mapValueOfType<int>(json, r'number_of_words'),
        numberOfSentences: mapValueOfType<int>(json, r'number_of_sentences'),
        readability: InlineResponse20019Readability.fromJson(json[r'readability']),
        skimmability: InlineResponse20019Skimmability.fromJson(json[r'skimmability']),
        interestingness: InlineResponse20019Interestingness.fromJson(json[r'interestingness']),
        style: InlineResponse20019Style.fromJson(json[r'style']),
        totalScore: json[r'total_score'] == null
          ? null
          : num.parse(json[r'total_score'].toString()),
      );
    }
    return null;
  }

  static List<InlineResponse20019> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse20019.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse20019>[];

  static Map<String, InlineResponse20019> mapFromJson(dynamic json) {
    final map = <String, InlineResponse20019>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse20019.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse20019-objects as value to a dart map
  static Map<String, List<InlineResponse20019>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse20019>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse20019.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

