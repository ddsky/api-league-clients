//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchGamesAPI200ResponseResultsInnerRating {
  /// Returns a new [SearchGamesAPI200ResponseResultsInnerRating] instance.
  SearchGamesAPI200ResponseResultsInnerRating({
    this.count,
    this.mean,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? count;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? mean;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchGamesAPI200ResponseResultsInnerRating &&
    other.count == count &&
    other.mean == mean;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (count == null ? 0 : count!.hashCode) +
    (mean == null ? 0 : mean!.hashCode);

  @override
  String toString() => 'SearchGamesAPI200ResponseResultsInnerRating[count=$count, mean=$mean]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.count != null) {
      json[r'count'] = this.count;
    } else {
      json[r'count'] = null;
    }
    if (this.mean != null) {
      json[r'mean'] = this.mean;
    } else {
      json[r'mean'] = null;
    }
    return json;
  }

  /// Returns a new [SearchGamesAPI200ResponseResultsInnerRating] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchGamesAPI200ResponseResultsInnerRating? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchGamesAPI200ResponseResultsInnerRating[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchGamesAPI200ResponseResultsInnerRating[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchGamesAPI200ResponseResultsInnerRating(
        count: mapValueOfType<int>(json, r'count'),
        mean: num.parse('${json[r'mean']}'),
      );
    }
    return null;
  }

  static List<SearchGamesAPI200ResponseResultsInnerRating> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchGamesAPI200ResponseResultsInnerRating>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchGamesAPI200ResponseResultsInnerRating.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchGamesAPI200ResponseResultsInnerRating> mapFromJson(dynamic json) {
    final map = <String, SearchGamesAPI200ResponseResultsInnerRating>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchGamesAPI200ResponseResultsInnerRating.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchGamesAPI200ResponseResultsInnerRating-objects as value to a dart map
  static Map<String, List<SearchGamesAPI200ResponseResultsInnerRating>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchGamesAPI200ResponseResultsInnerRating>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchGamesAPI200ResponseResultsInnerRating.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

