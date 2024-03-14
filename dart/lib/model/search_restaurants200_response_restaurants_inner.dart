//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchRestaurants200ResponseRestaurantsInner {
  /// Returns a new [SearchRestaurants200ResponseRestaurantsInner] instance.
  SearchRestaurants200ResponseRestaurantsInner({
    this.offersThirdPartyDelivery,
    this.address,
    this.supportsUpcCodes,
    this.isOpen,
    this.description,
    this.weightedRatingValue,
    this.type,
    this.offersFirstPartyDelivery,
    this.aggregatedRatingCount,
    this.pickupEnabled,
    this.cuisines = const [],
    this.miles,
    this.dollarSigns,
    this.deliveryEnabled,
    this.name,
    this.phoneNumber,
    this.id,
    this.localHours,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? offersThirdPartyDelivery;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SearchRestaurants200ResponseRestaurantsInnerAddress? address;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? supportsUpcCodes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isOpen;

  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? weightedRatingValue;

  String? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? offersFirstPartyDelivery;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? aggregatedRatingCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? pickupEnabled;

  List<String> cuisines;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? miles;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? dollarSigns;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? deliveryEnabled;

  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? phoneNumber;

  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SearchRestaurants200ResponseRestaurantsInnerLocalHours? localHours;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchRestaurants200ResponseRestaurantsInner &&
    other.offersThirdPartyDelivery == offersThirdPartyDelivery &&
    other.address == address &&
    other.supportsUpcCodes == supportsUpcCodes &&
    other.isOpen == isOpen &&
    other.description == description &&
    other.weightedRatingValue == weightedRatingValue &&
    other.type == type &&
    other.offersFirstPartyDelivery == offersFirstPartyDelivery &&
    other.aggregatedRatingCount == aggregatedRatingCount &&
    other.pickupEnabled == pickupEnabled &&
    _deepEquality.equals(other.cuisines, cuisines) &&
    other.miles == miles &&
    other.dollarSigns == dollarSigns &&
    other.deliveryEnabled == deliveryEnabled &&
    other.name == name &&
    other.phoneNumber == phoneNumber &&
    other.id == id &&
    other.localHours == localHours;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (offersThirdPartyDelivery == null ? 0 : offersThirdPartyDelivery!.hashCode) +
    (address == null ? 0 : address!.hashCode) +
    (supportsUpcCodes == null ? 0 : supportsUpcCodes!.hashCode) +
    (isOpen == null ? 0 : isOpen!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (weightedRatingValue == null ? 0 : weightedRatingValue!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (offersFirstPartyDelivery == null ? 0 : offersFirstPartyDelivery!.hashCode) +
    (aggregatedRatingCount == null ? 0 : aggregatedRatingCount!.hashCode) +
    (pickupEnabled == null ? 0 : pickupEnabled!.hashCode) +
    (cuisines.hashCode) +
    (miles == null ? 0 : miles!.hashCode) +
    (dollarSigns == null ? 0 : dollarSigns!.hashCode) +
    (deliveryEnabled == null ? 0 : deliveryEnabled!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (phoneNumber == null ? 0 : phoneNumber!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (localHours == null ? 0 : localHours!.hashCode);

  @override
  String toString() => 'SearchRestaurants200ResponseRestaurantsInner[offersThirdPartyDelivery=$offersThirdPartyDelivery, address=$address, supportsUpcCodes=$supportsUpcCodes, isOpen=$isOpen, description=$description, weightedRatingValue=$weightedRatingValue, type=$type, offersFirstPartyDelivery=$offersFirstPartyDelivery, aggregatedRatingCount=$aggregatedRatingCount, pickupEnabled=$pickupEnabled, cuisines=$cuisines, miles=$miles, dollarSigns=$dollarSigns, deliveryEnabled=$deliveryEnabled, name=$name, phoneNumber=$phoneNumber, id=$id, localHours=$localHours]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.offersThirdPartyDelivery != null) {
      json[r'offers_third_party_delivery'] = this.offersThirdPartyDelivery;
    } else {
      json[r'offers_third_party_delivery'] = null;
    }
    if (this.address != null) {
      json[r'address'] = this.address;
    } else {
      json[r'address'] = null;
    }
    if (this.supportsUpcCodes != null) {
      json[r'supports_upc_codes'] = this.supportsUpcCodes;
    } else {
      json[r'supports_upc_codes'] = null;
    }
    if (this.isOpen != null) {
      json[r'is_open'] = this.isOpen;
    } else {
      json[r'is_open'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.weightedRatingValue != null) {
      json[r'weighted_rating_value'] = this.weightedRatingValue;
    } else {
      json[r'weighted_rating_value'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.offersFirstPartyDelivery != null) {
      json[r'offers_first_party_delivery'] = this.offersFirstPartyDelivery;
    } else {
      json[r'offers_first_party_delivery'] = null;
    }
    if (this.aggregatedRatingCount != null) {
      json[r'aggregated_rating_count'] = this.aggregatedRatingCount;
    } else {
      json[r'aggregated_rating_count'] = null;
    }
    if (this.pickupEnabled != null) {
      json[r'pickup_enabled'] = this.pickupEnabled;
    } else {
      json[r'pickup_enabled'] = null;
    }
      json[r'cuisines'] = this.cuisines;
    if (this.miles != null) {
      json[r'miles'] = this.miles;
    } else {
      json[r'miles'] = null;
    }
    if (this.dollarSigns != null) {
      json[r'dollar_signs'] = this.dollarSigns;
    } else {
      json[r'dollar_signs'] = null;
    }
    if (this.deliveryEnabled != null) {
      json[r'delivery_enabled'] = this.deliveryEnabled;
    } else {
      json[r'delivery_enabled'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.phoneNumber != null) {
      json[r'phone_number'] = this.phoneNumber;
    } else {
      json[r'phone_number'] = null;
    }
    if (this.id != null) {
      json[r'_id'] = this.id;
    } else {
      json[r'_id'] = null;
    }
    if (this.localHours != null) {
      json[r'local_hours'] = this.localHours;
    } else {
      json[r'local_hours'] = null;
    }
    return json;
  }

  /// Returns a new [SearchRestaurants200ResponseRestaurantsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchRestaurants200ResponseRestaurantsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchRestaurants200ResponseRestaurantsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchRestaurants200ResponseRestaurantsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchRestaurants200ResponseRestaurantsInner(
        offersThirdPartyDelivery: mapValueOfType<bool>(json, r'offers_third_party_delivery'),
        address: SearchRestaurants200ResponseRestaurantsInnerAddress.fromJson(json[r'address']),
        supportsUpcCodes: mapValueOfType<bool>(json, r'supports_upc_codes'),
        isOpen: mapValueOfType<bool>(json, r'is_open'),
        description: mapValueOfType<String>(json, r'description'),
        weightedRatingValue: mapValueOfType<int>(json, r'weighted_rating_value'),
        type: mapValueOfType<String>(json, r'type'),
        offersFirstPartyDelivery: mapValueOfType<bool>(json, r'offers_first_party_delivery'),
        aggregatedRatingCount: mapValueOfType<int>(json, r'aggregated_rating_count'),
        pickupEnabled: mapValueOfType<bool>(json, r'pickup_enabled'),
        cuisines: json[r'cuisines'] is Iterable
            ? (json[r'cuisines'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        miles: num.parse('${json[r'miles']}'),
        dollarSigns: mapValueOfType<int>(json, r'dollar_signs'),
        deliveryEnabled: mapValueOfType<bool>(json, r'delivery_enabled'),
        name: mapValueOfType<String>(json, r'name'),
        phoneNumber: num.parse('${json[r'phone_number']}'),
        id: mapValueOfType<String>(json, r'_id'),
        localHours: SearchRestaurants200ResponseRestaurantsInnerLocalHours.fromJson(json[r'local_hours']),
      );
    }
    return null;
  }

  static List<SearchRestaurants200ResponseRestaurantsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchRestaurants200ResponseRestaurantsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchRestaurants200ResponseRestaurantsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchRestaurants200ResponseRestaurantsInner> mapFromJson(dynamic json) {
    final map = <String, SearchRestaurants200ResponseRestaurantsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchRestaurants200ResponseRestaurantsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchRestaurants200ResponseRestaurantsInner-objects as value to a dart map
  static Map<String, List<SearchRestaurants200ResponseRestaurantsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchRestaurants200ResponseRestaurantsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchRestaurants200ResponseRestaurantsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

