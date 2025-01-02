//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours {
  /// Returns a new [SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours] instance.
  SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours({
    this.operational,
    this.delivery,
    this.pickup,
    this.dineIn,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational? operational;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational? delivery;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational? pickup;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational? dineIn;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours &&
    other.operational == operational &&
    other.delivery == delivery &&
    other.pickup == pickup &&
    other.dineIn == dineIn;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (operational == null ? 0 : operational!.hashCode) +
    (delivery == null ? 0 : delivery!.hashCode) +
    (pickup == null ? 0 : pickup!.hashCode) +
    (dineIn == null ? 0 : dineIn!.hashCode);

  @override
  String toString() => 'SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours[operational=$operational, delivery=$delivery, pickup=$pickup, dineIn=$dineIn]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.operational != null) {
      json[r'operational'] = this.operational;
    } else {
      json[r'operational'] = null;
    }
    if (this.delivery != null) {
      json[r'delivery'] = this.delivery;
    } else {
      json[r'delivery'] = null;
    }
    if (this.pickup != null) {
      json[r'pickup'] = this.pickup;
    } else {
      json[r'pickup'] = null;
    }
    if (this.dineIn != null) {
      json[r'dine_in'] = this.dineIn;
    } else {
      json[r'dine_in'] = null;
    }
    return json;
  }

  /// Returns a new [SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours(
        operational: SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational.fromJson(json[r'operational']),
        delivery: SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational.fromJson(json[r'delivery']),
        pickup: SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational.fromJson(json[r'pickup']),
        dineIn: SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational.fromJson(json[r'dine_in']),
      );
    }
    return null;
  }

  static List<SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours> mapFromJson(dynamic json) {
    final map = <String, SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours-objects as value to a dart map
  static Map<String, List<SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

