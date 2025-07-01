//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RetrieveGameById200ResponseOffersInner {
  /// Returns a new [RetrieveGameById200ResponseOffersInner] instance.
  RetrieveGameById200ResponseOffersInner({
    this.storeName,
    this.title,
    this.price,
    this.platform,
    this.url,
  });

  String? storeName;

  String? title;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RetrieveGameById200ResponseOffersInnerPrice? price;

  String? platform;

  String? url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RetrieveGameById200ResponseOffersInner &&
    other.storeName == storeName &&
    other.title == title &&
    other.price == price &&
    other.platform == platform &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (storeName == null ? 0 : storeName!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (price == null ? 0 : price!.hashCode) +
    (platform == null ? 0 : platform!.hashCode) +
    (url == null ? 0 : url!.hashCode);

  @override
  String toString() => 'RetrieveGameById200ResponseOffersInner[storeName=$storeName, title=$title, price=$price, platform=$platform, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.storeName != null) {
      json[r'store_name'] = this.storeName;
    } else {
      json[r'store_name'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.price != null) {
      json[r'price'] = this.price;
    } else {
      json[r'price'] = null;
    }
    if (this.platform != null) {
      json[r'platform'] = this.platform;
    } else {
      json[r'platform'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    return json;
  }

  /// Returns a new [RetrieveGameById200ResponseOffersInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RetrieveGameById200ResponseOffersInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RetrieveGameById200ResponseOffersInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RetrieveGameById200ResponseOffersInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RetrieveGameById200ResponseOffersInner(
        storeName: mapValueOfType<String>(json, r'store_name'),
        title: mapValueOfType<String>(json, r'title'),
        price: RetrieveGameById200ResponseOffersInnerPrice.fromJson(json[r'price']),
        platform: mapValueOfType<String>(json, r'platform'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<RetrieveGameById200ResponseOffersInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RetrieveGameById200ResponseOffersInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RetrieveGameById200ResponseOffersInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RetrieveGameById200ResponseOffersInner> mapFromJson(dynamic json) {
    final map = <String, RetrieveGameById200ResponseOffersInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RetrieveGameById200ResponseOffersInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RetrieveGameById200ResponseOffersInner-objects as value to a dart map
  static Map<String, List<RetrieveGameById200ResponseOffersInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RetrieveGameById200ResponseOffersInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RetrieveGameById200ResponseOffersInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

