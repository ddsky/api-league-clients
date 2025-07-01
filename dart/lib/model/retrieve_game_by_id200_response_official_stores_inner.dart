//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RetrieveGameById200ResponseOfficialStoresInner {
  /// Returns a new [RetrieveGameById200ResponseOfficialStoresInner] instance.
  RetrieveGameById200ResponseOfficialStoresInner({
    this.url,
    this.source_,
  });

  String? url;

  String? source_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RetrieveGameById200ResponseOfficialStoresInner &&
    other.url == url &&
    other.source_ == source_;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (url == null ? 0 : url!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode);

  @override
  String toString() => 'RetrieveGameById200ResponseOfficialStoresInner[url=$url, source_=$source_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    return json;
  }

  /// Returns a new [RetrieveGameById200ResponseOfficialStoresInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RetrieveGameById200ResponseOfficialStoresInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RetrieveGameById200ResponseOfficialStoresInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RetrieveGameById200ResponseOfficialStoresInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RetrieveGameById200ResponseOfficialStoresInner(
        url: mapValueOfType<String>(json, r'url'),
        source_: mapValueOfType<String>(json, r'source'),
      );
    }
    return null;
  }

  static List<RetrieveGameById200ResponseOfficialStoresInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RetrieveGameById200ResponseOfficialStoresInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RetrieveGameById200ResponseOfficialStoresInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RetrieveGameById200ResponseOfficialStoresInner> mapFromJson(dynamic json) {
    final map = <String, RetrieveGameById200ResponseOfficialStoresInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RetrieveGameById200ResponseOfficialStoresInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RetrieveGameById200ResponseOfficialStoresInner-objects as value to a dart map
  static Map<String, List<RetrieveGameById200ResponseOfficialStoresInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RetrieveGameById200ResponseOfficialStoresInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RetrieveGameById200ResponseOfficialStoresInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

