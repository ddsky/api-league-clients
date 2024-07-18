//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchDrinks200ResponseDrinksInnerCredits {
  /// Returns a new [SearchDrinks200ResponseDrinksInnerCredits] instance.
  SearchDrinks200ResponseDrinksInnerCredits({
    this.text,
    this.sourceName,
    this.sourceUrl,
  });

  String? text;

  String? sourceName;

  String? sourceUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchDrinks200ResponseDrinksInnerCredits &&
    other.text == text &&
    other.sourceName == sourceName &&
    other.sourceUrl == sourceUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (text == null ? 0 : text!.hashCode) +
    (sourceName == null ? 0 : sourceName!.hashCode) +
    (sourceUrl == null ? 0 : sourceUrl!.hashCode);

  @override
  String toString() => 'SearchDrinks200ResponseDrinksInnerCredits[text=$text, sourceName=$sourceName, sourceUrl=$sourceUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.text != null) {
      json[r'text'] = this.text;
    } else {
      json[r'text'] = null;
    }
    if (this.sourceName != null) {
      json[r'source_name'] = this.sourceName;
    } else {
      json[r'source_name'] = null;
    }
    if (this.sourceUrl != null) {
      json[r'source_url'] = this.sourceUrl;
    } else {
      json[r'source_url'] = null;
    }
    return json;
  }

  /// Returns a new [SearchDrinks200ResponseDrinksInnerCredits] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchDrinks200ResponseDrinksInnerCredits? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchDrinks200ResponseDrinksInnerCredits[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchDrinks200ResponseDrinksInnerCredits[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchDrinks200ResponseDrinksInnerCredits(
        text: mapValueOfType<String>(json, r'text'),
        sourceName: mapValueOfType<String>(json, r'source_name'),
        sourceUrl: mapValueOfType<String>(json, r'source_url'),
      );
    }
    return null;
  }

  static List<SearchDrinks200ResponseDrinksInnerCredits> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchDrinks200ResponseDrinksInnerCredits>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchDrinks200ResponseDrinksInnerCredits.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchDrinks200ResponseDrinksInnerCredits> mapFromJson(dynamic json) {
    final map = <String, SearchDrinks200ResponseDrinksInnerCredits>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchDrinks200ResponseDrinksInnerCredits.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchDrinks200ResponseDrinksInnerCredits-objects as value to a dart map
  static Map<String, List<SearchDrinks200ResponseDrinksInnerCredits>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchDrinks200ResponseDrinksInnerCredits>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchDrinks200ResponseDrinksInnerCredits.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

