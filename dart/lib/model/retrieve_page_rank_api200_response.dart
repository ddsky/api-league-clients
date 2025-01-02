//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RetrievePageRankAPI200Response {
  /// Returns a new [RetrievePageRankAPI200Response] instance.
  RetrievePageRankAPI200Response({
    this.pageRank,
    this.position,
    this.percentile,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? pageRank;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? position;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? percentile;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RetrievePageRankAPI200Response &&
    other.pageRank == pageRank &&
    other.position == position &&
    other.percentile == percentile;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (pageRank == null ? 0 : pageRank!.hashCode) +
    (position == null ? 0 : position!.hashCode) +
    (percentile == null ? 0 : percentile!.hashCode);

  @override
  String toString() => 'RetrievePageRankAPI200Response[pageRank=$pageRank, position=$position, percentile=$percentile]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.pageRank != null) {
      json[r'page_rank'] = this.pageRank;
    } else {
      json[r'page_rank'] = null;
    }
    if (this.position != null) {
      json[r'position'] = this.position;
    } else {
      json[r'position'] = null;
    }
    if (this.percentile != null) {
      json[r'percentile'] = this.percentile;
    } else {
      json[r'percentile'] = null;
    }
    return json;
  }

  /// Returns a new [RetrievePageRankAPI200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RetrievePageRankAPI200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RetrievePageRankAPI200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RetrievePageRankAPI200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RetrievePageRankAPI200Response(
        pageRank: num.parse('${json[r'page_rank']}'),
        position: mapValueOfType<int>(json, r'position'),
        percentile: num.parse('${json[r'percentile']}'),
      );
    }
    return null;
  }

  static List<RetrievePageRankAPI200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RetrievePageRankAPI200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RetrievePageRankAPI200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RetrievePageRankAPI200Response> mapFromJson(dynamic json) {
    final map = <String, RetrievePageRankAPI200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RetrievePageRankAPI200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RetrievePageRankAPI200Response-objects as value to a dart map
  static Map<String, List<RetrievePageRankAPI200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RetrievePageRankAPI200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RetrievePageRankAPI200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

