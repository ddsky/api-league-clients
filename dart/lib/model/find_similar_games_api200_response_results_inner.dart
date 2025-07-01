//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FindSimilarGamesAPI200ResponseResultsInner {
  /// Returns a new [FindSimilarGamesAPI200ResponseResultsInner] instance.
  FindSimilarGamesAPI200ResponseResultsInner({
    this.image,
    this.shortDescription,
    this.microTrailer,
    this.year,
    this.name,
    this.genre,
    this.link,
    this.rating,
    this.id,
    this.adultOnly,
    this.screenshots = const [],
    this.gameplay,
  });

  String? image;

  String? shortDescription;

  String? microTrailer;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? year;

  String? name;

  String? genre;

  String? link;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SearchGamesAPI200ResponseResultsInnerRating? rating;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? adultOnly;

  List<String> screenshots;

  String? gameplay;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FindSimilarGamesAPI200ResponseResultsInner &&
    other.image == image &&
    other.shortDescription == shortDescription &&
    other.microTrailer == microTrailer &&
    other.year == year &&
    other.name == name &&
    other.genre == genre &&
    other.link == link &&
    other.rating == rating &&
    other.id == id &&
    other.adultOnly == adultOnly &&
    _deepEquality.equals(other.screenshots, screenshots) &&
    other.gameplay == gameplay;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (image == null ? 0 : image!.hashCode) +
    (shortDescription == null ? 0 : shortDescription!.hashCode) +
    (microTrailer == null ? 0 : microTrailer!.hashCode) +
    (year == null ? 0 : year!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (genre == null ? 0 : genre!.hashCode) +
    (link == null ? 0 : link!.hashCode) +
    (rating == null ? 0 : rating!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (adultOnly == null ? 0 : adultOnly!.hashCode) +
    (screenshots.hashCode) +
    (gameplay == null ? 0 : gameplay!.hashCode);

  @override
  String toString() => 'FindSimilarGamesAPI200ResponseResultsInner[image=$image, shortDescription=$shortDescription, microTrailer=$microTrailer, year=$year, name=$name, genre=$genre, link=$link, rating=$rating, id=$id, adultOnly=$adultOnly, screenshots=$screenshots, gameplay=$gameplay]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    if (this.shortDescription != null) {
      json[r'short_description'] = this.shortDescription;
    } else {
      json[r'short_description'] = null;
    }
    if (this.microTrailer != null) {
      json[r'micro_trailer'] = this.microTrailer;
    } else {
      json[r'micro_trailer'] = null;
    }
    if (this.year != null) {
      json[r'year'] = this.year;
    } else {
      json[r'year'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.genre != null) {
      json[r'genre'] = this.genre;
    } else {
      json[r'genre'] = null;
    }
    if (this.link != null) {
      json[r'link'] = this.link;
    } else {
      json[r'link'] = null;
    }
    if (this.rating != null) {
      json[r'rating'] = this.rating;
    } else {
      json[r'rating'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.adultOnly != null) {
      json[r'adult_only'] = this.adultOnly;
    } else {
      json[r'adult_only'] = null;
    }
      json[r'screenshots'] = this.screenshots;
    if (this.gameplay != null) {
      json[r'gameplay'] = this.gameplay;
    } else {
      json[r'gameplay'] = null;
    }
    return json;
  }

  /// Returns a new [FindSimilarGamesAPI200ResponseResultsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FindSimilarGamesAPI200ResponseResultsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FindSimilarGamesAPI200ResponseResultsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FindSimilarGamesAPI200ResponseResultsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FindSimilarGamesAPI200ResponseResultsInner(
        image: mapValueOfType<String>(json, r'image'),
        shortDescription: mapValueOfType<String>(json, r'short_description'),
        microTrailer: mapValueOfType<String>(json, r'micro_trailer'),
        year: mapValueOfType<int>(json, r'year'),
        name: mapValueOfType<String>(json, r'name'),
        genre: mapValueOfType<String>(json, r'genre'),
        link: mapValueOfType<String>(json, r'link'),
        rating: SearchGamesAPI200ResponseResultsInnerRating.fromJson(json[r'rating']),
        id: mapValueOfType<int>(json, r'id'),
        adultOnly: mapValueOfType<bool>(json, r'adult_only'),
        screenshots: json[r'screenshots'] is Iterable
            ? (json[r'screenshots'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        gameplay: mapValueOfType<String>(json, r'gameplay'),
      );
    }
    return null;
  }

  static List<FindSimilarGamesAPI200ResponseResultsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FindSimilarGamesAPI200ResponseResultsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FindSimilarGamesAPI200ResponseResultsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FindSimilarGamesAPI200ResponseResultsInner> mapFromJson(dynamic json) {
    final map = <String, FindSimilarGamesAPI200ResponseResultsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FindSimilarGamesAPI200ResponseResultsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FindSimilarGamesAPI200ResponseResultsInner-objects as value to a dart map
  static Map<String, List<FindSimilarGamesAPI200ResponseResultsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FindSimilarGamesAPI200ResponseResultsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FindSimilarGamesAPI200ResponseResultsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

