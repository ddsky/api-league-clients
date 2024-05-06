//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchRestaurants200ResponseRestaurantsInnerAddress {
  /// Returns a new [SearchRestaurants200ResponseRestaurantsInnerAddress] instance.
  SearchRestaurants200ResponseRestaurantsInnerAddress({
    this.zipcode,
    this.country,
    this.city,
    this.latitude,
    this.lon,
    this.streetAddr2,
    this.state,
    this.streetAddr,
    this.lat,
    this.longitude,
  });

  String? zipcode;

  String? country;

  String? city;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? latitude;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? lon;

  String? streetAddr2;

  String? state;

  String? streetAddr;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? lat;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? longitude;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchRestaurants200ResponseRestaurantsInnerAddress &&
    other.zipcode == zipcode &&
    other.country == country &&
    other.city == city &&
    other.latitude == latitude &&
    other.lon == lon &&
    other.streetAddr2 == streetAddr2 &&
    other.state == state &&
    other.streetAddr == streetAddr &&
    other.lat == lat &&
    other.longitude == longitude;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (zipcode == null ? 0 : zipcode!.hashCode) +
    (country == null ? 0 : country!.hashCode) +
    (city == null ? 0 : city!.hashCode) +
    (latitude == null ? 0 : latitude!.hashCode) +
    (lon == null ? 0 : lon!.hashCode) +
    (streetAddr2 == null ? 0 : streetAddr2!.hashCode) +
    (state == null ? 0 : state!.hashCode) +
    (streetAddr == null ? 0 : streetAddr!.hashCode) +
    (lat == null ? 0 : lat!.hashCode) +
    (longitude == null ? 0 : longitude!.hashCode);

  @override
  String toString() => 'SearchRestaurants200ResponseRestaurantsInnerAddress[zipcode=$zipcode, country=$country, city=$city, latitude=$latitude, lon=$lon, streetAddr2=$streetAddr2, state=$state, streetAddr=$streetAddr, lat=$lat, longitude=$longitude]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.zipcode != null) {
      json[r'zipcode'] = this.zipcode;
    } else {
      json[r'zipcode'] = null;
    }
    if (this.country != null) {
      json[r'country'] = this.country;
    } else {
      json[r'country'] = null;
    }
    if (this.city != null) {
      json[r'city'] = this.city;
    } else {
      json[r'city'] = null;
    }
    if (this.latitude != null) {
      json[r'latitude'] = this.latitude;
    } else {
      json[r'latitude'] = null;
    }
    if (this.lon != null) {
      json[r'lon'] = this.lon;
    } else {
      json[r'lon'] = null;
    }
    if (this.streetAddr2 != null) {
      json[r'street_addr_2'] = this.streetAddr2;
    } else {
      json[r'street_addr_2'] = null;
    }
    if (this.state != null) {
      json[r'state'] = this.state;
    } else {
      json[r'state'] = null;
    }
    if (this.streetAddr != null) {
      json[r'street_addr'] = this.streetAddr;
    } else {
      json[r'street_addr'] = null;
    }
    if (this.lat != null) {
      json[r'lat'] = this.lat;
    } else {
      json[r'lat'] = null;
    }
    if (this.longitude != null) {
      json[r'longitude'] = this.longitude;
    } else {
      json[r'longitude'] = null;
    }
    return json;
  }

  /// Returns a new [SearchRestaurants200ResponseRestaurantsInnerAddress] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchRestaurants200ResponseRestaurantsInnerAddress? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchRestaurants200ResponseRestaurantsInnerAddress[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchRestaurants200ResponseRestaurantsInnerAddress[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchRestaurants200ResponseRestaurantsInnerAddress(
        zipcode: mapValueOfType<String>(json, r'zipcode'),
        country: mapValueOfType<String>(json, r'country'),
        city: mapValueOfType<String>(json, r'city'),
        latitude: num.parse('${json[r'latitude']}'),
        lon: num.parse('${json[r'lon']}'),
        streetAddr2: mapValueOfType<String>(json, r'street_addr_2'),
        state: mapValueOfType<String>(json, r'state'),
        streetAddr: mapValueOfType<String>(json, r'street_addr'),
        lat: num.parse('${json[r'lat']}'),
        longitude: num.parse('${json[r'longitude']}'),
      );
    }
    return null;
  }

  static List<SearchRestaurants200ResponseRestaurantsInnerAddress> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchRestaurants200ResponseRestaurantsInnerAddress>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchRestaurants200ResponseRestaurantsInnerAddress.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchRestaurants200ResponseRestaurantsInnerAddress> mapFromJson(dynamic json) {
    final map = <String, SearchRestaurants200ResponseRestaurantsInnerAddress>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchRestaurants200ResponseRestaurantsInnerAddress.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchRestaurants200ResponseRestaurantsInnerAddress-objects as value to a dart map
  static Map<String, List<SearchRestaurants200ResponseRestaurantsInnerAddress>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchRestaurants200ResponseRestaurantsInnerAddress>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchRestaurants200ResponseRestaurantsInnerAddress.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

