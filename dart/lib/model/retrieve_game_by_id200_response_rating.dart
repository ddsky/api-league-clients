//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RetrieveGameById200ResponseRating {
  /// Returns a new [RetrieveGameById200ResponseRating] instance.
  RetrieveGameById200ResponseRating({
    this.count,
    this.countCritics,
    this.meanPlayers,
    this.meanCritics,
    this.mean,
    this.countPlayers,
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
  int? countCritics;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? meanPlayers;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? meanCritics;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? mean;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? countPlayers;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RetrieveGameById200ResponseRating &&
    other.count == count &&
    other.countCritics == countCritics &&
    other.meanPlayers == meanPlayers &&
    other.meanCritics == meanCritics &&
    other.mean == mean &&
    other.countPlayers == countPlayers;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (count == null ? 0 : count!.hashCode) +
    (countCritics == null ? 0 : countCritics!.hashCode) +
    (meanPlayers == null ? 0 : meanPlayers!.hashCode) +
    (meanCritics == null ? 0 : meanCritics!.hashCode) +
    (mean == null ? 0 : mean!.hashCode) +
    (countPlayers == null ? 0 : countPlayers!.hashCode);

  @override
  String toString() => 'RetrieveGameById200ResponseRating[count=$count, countCritics=$countCritics, meanPlayers=$meanPlayers, meanCritics=$meanCritics, mean=$mean, countPlayers=$countPlayers]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.count != null) {
      json[r'count'] = this.count;
    } else {
      json[r'count'] = null;
    }
    if (this.countCritics != null) {
      json[r'count_critics'] = this.countCritics;
    } else {
      json[r'count_critics'] = null;
    }
    if (this.meanPlayers != null) {
      json[r'mean_players'] = this.meanPlayers;
    } else {
      json[r'mean_players'] = null;
    }
    if (this.meanCritics != null) {
      json[r'mean_critics'] = this.meanCritics;
    } else {
      json[r'mean_critics'] = null;
    }
    if (this.mean != null) {
      json[r'mean'] = this.mean;
    } else {
      json[r'mean'] = null;
    }
    if (this.countPlayers != null) {
      json[r'count_players'] = this.countPlayers;
    } else {
      json[r'count_players'] = null;
    }
    return json;
  }

  /// Returns a new [RetrieveGameById200ResponseRating] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RetrieveGameById200ResponseRating? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RetrieveGameById200ResponseRating[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RetrieveGameById200ResponseRating[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RetrieveGameById200ResponseRating(
        count: mapValueOfType<int>(json, r'count'),
        countCritics: mapValueOfType<int>(json, r'count_critics'),
        meanPlayers: num.parse('${json[r'mean_players']}'),
        meanCritics: num.parse('${json[r'mean_critics']}'),
        mean: num.parse('${json[r'mean']}'),
        countPlayers: mapValueOfType<int>(json, r'count_players'),
      );
    }
    return null;
  }

  static List<RetrieveGameById200ResponseRating> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RetrieveGameById200ResponseRating>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RetrieveGameById200ResponseRating.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RetrieveGameById200ResponseRating> mapFromJson(dynamic json) {
    final map = <String, RetrieveGameById200ResponseRating>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RetrieveGameById200ResponseRating.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RetrieveGameById200ResponseRating-objects as value to a dart map
  static Map<String, List<RetrieveGameById200ResponseRating>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RetrieveGameById200ResponseRating>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RetrieveGameById200ResponseRating.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

