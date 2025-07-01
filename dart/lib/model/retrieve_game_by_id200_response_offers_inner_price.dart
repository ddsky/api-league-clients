//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RetrieveGameById200ResponseOffersInnerPrice {
  /// Returns a new [RetrieveGameById200ResponseOffersInnerPrice] instance.
  RetrieveGameById200ResponseOffersInnerPrice({
    this.currency,
    this.discountPercent,
    this.value,
    this.initial,
  });

  String? currency;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? discountPercent;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? value;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? initial;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RetrieveGameById200ResponseOffersInnerPrice &&
    other.currency == currency &&
    other.discountPercent == discountPercent &&
    other.value == value &&
    other.initial == initial;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (currency == null ? 0 : currency!.hashCode) +
    (discountPercent == null ? 0 : discountPercent!.hashCode) +
    (value == null ? 0 : value!.hashCode) +
    (initial == null ? 0 : initial!.hashCode);

  @override
  String toString() => 'RetrieveGameById200ResponseOffersInnerPrice[currency=$currency, discountPercent=$discountPercent, value=$value, initial=$initial]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.currency != null) {
      json[r'currency'] = this.currency;
    } else {
      json[r'currency'] = null;
    }
    if (this.discountPercent != null) {
      json[r'discount_percent'] = this.discountPercent;
    } else {
      json[r'discount_percent'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    if (this.initial != null) {
      json[r'initial'] = this.initial;
    } else {
      json[r'initial'] = null;
    }
    return json;
  }

  /// Returns a new [RetrieveGameById200ResponseOffersInnerPrice] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RetrieveGameById200ResponseOffersInnerPrice? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RetrieveGameById200ResponseOffersInnerPrice[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RetrieveGameById200ResponseOffersInnerPrice[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RetrieveGameById200ResponseOffersInnerPrice(
        currency: mapValueOfType<String>(json, r'currency'),
        discountPercent: mapValueOfType<int>(json, r'discount_percent'),
        value: num.parse('${json[r'value']}'),
        initial: num.parse('${json[r'initial']}'),
      );
    }
    return null;
  }

  static List<RetrieveGameById200ResponseOffersInnerPrice> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RetrieveGameById200ResponseOffersInnerPrice>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RetrieveGameById200ResponseOffersInnerPrice.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RetrieveGameById200ResponseOffersInnerPrice> mapFromJson(dynamic json) {
    final map = <String, RetrieveGameById200ResponseOffersInnerPrice>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RetrieveGameById200ResponseOffersInnerPrice.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RetrieveGameById200ResponseOffersInnerPrice-objects as value to a dart map
  static Map<String, List<RetrieveGameById200ResponseOffersInnerPrice>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RetrieveGameById200ResponseOffersInnerPrice>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RetrieveGameById200ResponseOffersInnerPrice.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

