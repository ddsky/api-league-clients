//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational {
  /// Returns a new [SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational] instance.
  SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational({
    this.sunday,
    this.saturday,
    this.tuesday,
    this.thursday,
    this.friday,
    this.wednesday,
    this.monday,
  });

  String? sunday;

  String? saturday;

  String? tuesday;

  String? thursday;

  String? friday;

  String? wednesday;

  String? monday;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational &&
    other.sunday == sunday &&
    other.saturday == saturday &&
    other.tuesday == tuesday &&
    other.thursday == thursday &&
    other.friday == friday &&
    other.wednesday == wednesday &&
    other.monday == monday;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sunday == null ? 0 : sunday!.hashCode) +
    (saturday == null ? 0 : saturday!.hashCode) +
    (tuesday == null ? 0 : tuesday!.hashCode) +
    (thursday == null ? 0 : thursday!.hashCode) +
    (friday == null ? 0 : friday!.hashCode) +
    (wednesday == null ? 0 : wednesday!.hashCode) +
    (monday == null ? 0 : monday!.hashCode);

  @override
  String toString() => 'SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational[sunday=$sunday, saturday=$saturday, tuesday=$tuesday, thursday=$thursday, friday=$friday, wednesday=$wednesday, monday=$monday]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.sunday != null) {
      json[r'sunday'] = this.sunday;
    } else {
      json[r'sunday'] = null;
    }
    if (this.saturday != null) {
      json[r'saturday'] = this.saturday;
    } else {
      json[r'saturday'] = null;
    }
    if (this.tuesday != null) {
      json[r'tuesday'] = this.tuesday;
    } else {
      json[r'tuesday'] = null;
    }
    if (this.thursday != null) {
      json[r'thursday'] = this.thursday;
    } else {
      json[r'thursday'] = null;
    }
    if (this.friday != null) {
      json[r'friday'] = this.friday;
    } else {
      json[r'friday'] = null;
    }
    if (this.wednesday != null) {
      json[r'wednesday'] = this.wednesday;
    } else {
      json[r'wednesday'] = null;
    }
    if (this.monday != null) {
      json[r'monday'] = this.monday;
    } else {
      json[r'monday'] = null;
    }
    return json;
  }

  /// Returns a new [SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational(
        sunday: mapValueOfType<String>(json, r'sunday'),
        saturday: mapValueOfType<String>(json, r'saturday'),
        tuesday: mapValueOfType<String>(json, r'tuesday'),
        thursday: mapValueOfType<String>(json, r'thursday'),
        friday: mapValueOfType<String>(json, r'friday'),
        wednesday: mapValueOfType<String>(json, r'wednesday'),
        monday: mapValueOfType<String>(json, r'monday'),
      );
    }
    return null;
  }

  static List<SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational> mapFromJson(dynamic json) {
    final map = <String, SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational-objects as value to a dart map
  static Map<String, List<SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

