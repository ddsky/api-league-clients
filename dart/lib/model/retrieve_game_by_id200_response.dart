//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RetrieveGameById200Response {
  /// Returns a new [RetrieveGameById200Response] instance.
  RetrieveGameById200Response({
    this.id,
    this.name,
    this.image,
    this.gameplay,
    this.link,
    this.xUrl,
    this.rating,
    this.description,
    this.shortDescription,
    this.releaseDate,
    this.developer,
    this.playtime,
    this.platforms = const [],
    this.tags = const [],
    this.genres = const [],
    this.genre,
    this.themes = const [],
    this.adultOnly,
    this.playModes = const [],
    this.screenshots = const [],
    this.videos = const [],
    this.offers = const [],
    this.officialStores = const [],
    this.microTrailer,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  String? name;

  String? image;

  String? gameplay;

  String? link;

  String? xUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RetrieveGameById200ResponseRating? rating;

  String? description;

  String? shortDescription;

  String? releaseDate;

  String? developer;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RetrieveGameById200ResponsePlaytime? playtime;

  List<SearchGamesAPI200ResponseResultsInnerPlatformsInner> platforms;

  List<String> tags;

  List<SearchGamesAPI200ResponseResultsInnerPlatformsInner> genres;

  String? genre;

  List<SearchGamesAPI200ResponseResultsInnerPlatformsInner> themes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? adultOnly;

  List<SearchGamesAPI200ResponseResultsInnerPlatformsInner> playModes;

  List<String> screenshots;

  List<String> videos;

  List<RetrieveGameById200ResponseOffersInner> offers;

  List<RetrieveGameById200ResponseOfficialStoresInner> officialStores;

  String? microTrailer;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RetrieveGameById200Response &&
    other.id == id &&
    other.name == name &&
    other.image == image &&
    other.gameplay == gameplay &&
    other.link == link &&
    other.xUrl == xUrl &&
    other.rating == rating &&
    other.description == description &&
    other.shortDescription == shortDescription &&
    other.releaseDate == releaseDate &&
    other.developer == developer &&
    other.playtime == playtime &&
    _deepEquality.equals(other.platforms, platforms) &&
    _deepEquality.equals(other.tags, tags) &&
    _deepEquality.equals(other.genres, genres) &&
    other.genre == genre &&
    _deepEquality.equals(other.themes, themes) &&
    other.adultOnly == adultOnly &&
    _deepEquality.equals(other.playModes, playModes) &&
    _deepEquality.equals(other.screenshots, screenshots) &&
    _deepEquality.equals(other.videos, videos) &&
    _deepEquality.equals(other.offers, offers) &&
    _deepEquality.equals(other.officialStores, officialStores) &&
    other.microTrailer == microTrailer;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (gameplay == null ? 0 : gameplay!.hashCode) +
    (link == null ? 0 : link!.hashCode) +
    (xUrl == null ? 0 : xUrl!.hashCode) +
    (rating == null ? 0 : rating!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (shortDescription == null ? 0 : shortDescription!.hashCode) +
    (releaseDate == null ? 0 : releaseDate!.hashCode) +
    (developer == null ? 0 : developer!.hashCode) +
    (playtime == null ? 0 : playtime!.hashCode) +
    (platforms.hashCode) +
    (tags.hashCode) +
    (genres.hashCode) +
    (genre == null ? 0 : genre!.hashCode) +
    (themes.hashCode) +
    (adultOnly == null ? 0 : adultOnly!.hashCode) +
    (playModes.hashCode) +
    (screenshots.hashCode) +
    (videos.hashCode) +
    (offers.hashCode) +
    (officialStores.hashCode) +
    (microTrailer == null ? 0 : microTrailer!.hashCode);

  @override
  String toString() => 'RetrieveGameById200Response[id=$id, name=$name, image=$image, gameplay=$gameplay, link=$link, xUrl=$xUrl, rating=$rating, description=$description, shortDescription=$shortDescription, releaseDate=$releaseDate, developer=$developer, playtime=$playtime, platforms=$platforms, tags=$tags, genres=$genres, genre=$genre, themes=$themes, adultOnly=$adultOnly, playModes=$playModes, screenshots=$screenshots, videos=$videos, offers=$offers, officialStores=$officialStores, microTrailer=$microTrailer]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    if (this.gameplay != null) {
      json[r'gameplay'] = this.gameplay;
    } else {
      json[r'gameplay'] = null;
    }
    if (this.link != null) {
      json[r'link'] = this.link;
    } else {
      json[r'link'] = null;
    }
    if (this.xUrl != null) {
      json[r'x_url'] = this.xUrl;
    } else {
      json[r'x_url'] = null;
    }
    if (this.rating != null) {
      json[r'rating'] = this.rating;
    } else {
      json[r'rating'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.shortDescription != null) {
      json[r'short_description'] = this.shortDescription;
    } else {
      json[r'short_description'] = null;
    }
    if (this.releaseDate != null) {
      json[r'release_date'] = this.releaseDate;
    } else {
      json[r'release_date'] = null;
    }
    if (this.developer != null) {
      json[r'developer'] = this.developer;
    } else {
      json[r'developer'] = null;
    }
    if (this.playtime != null) {
      json[r'playtime'] = this.playtime;
    } else {
      json[r'playtime'] = null;
    }
      json[r'platforms'] = this.platforms;
      json[r'tags'] = this.tags;
      json[r'genres'] = this.genres;
    if (this.genre != null) {
      json[r'genre'] = this.genre;
    } else {
      json[r'genre'] = null;
    }
      json[r'themes'] = this.themes;
    if (this.adultOnly != null) {
      json[r'adult_only'] = this.adultOnly;
    } else {
      json[r'adult_only'] = null;
    }
      json[r'play_modes'] = this.playModes;
      json[r'screenshots'] = this.screenshots;
      json[r'videos'] = this.videos;
      json[r'offers'] = this.offers;
      json[r'official_stores'] = this.officialStores;
    if (this.microTrailer != null) {
      json[r'micro_trailer'] = this.microTrailer;
    } else {
      json[r'micro_trailer'] = null;
    }
    return json;
  }

  /// Returns a new [RetrieveGameById200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RetrieveGameById200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RetrieveGameById200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RetrieveGameById200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RetrieveGameById200Response(
        id: mapValueOfType<int>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        image: mapValueOfType<String>(json, r'image'),
        gameplay: mapValueOfType<String>(json, r'gameplay'),
        link: mapValueOfType<String>(json, r'link'),
        xUrl: mapValueOfType<String>(json, r'x_url'),
        rating: RetrieveGameById200ResponseRating.fromJson(json[r'rating']),
        description: mapValueOfType<String>(json, r'description'),
        shortDescription: mapValueOfType<String>(json, r'short_description'),
        releaseDate: mapValueOfType<String>(json, r'release_date'),
        developer: mapValueOfType<String>(json, r'developer'),
        playtime: RetrieveGameById200ResponsePlaytime.fromJson(json[r'playtime']),
        platforms: SearchGamesAPI200ResponseResultsInnerPlatformsInner.listFromJson(json[r'platforms']),
        tags: json[r'tags'] is Iterable
            ? (json[r'tags'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        genres: SearchGamesAPI200ResponseResultsInnerPlatformsInner.listFromJson(json[r'genres']),
        genre: mapValueOfType<String>(json, r'genre'),
        themes: SearchGamesAPI200ResponseResultsInnerPlatformsInner.listFromJson(json[r'themes']),
        adultOnly: mapValueOfType<bool>(json, r'adult_only'),
        playModes: SearchGamesAPI200ResponseResultsInnerPlatformsInner.listFromJson(json[r'play_modes']),
        screenshots: json[r'screenshots'] is Iterable
            ? (json[r'screenshots'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        videos: json[r'videos'] is Iterable
            ? (json[r'videos'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        offers: RetrieveGameById200ResponseOffersInner.listFromJson(json[r'offers']),
        officialStores: RetrieveGameById200ResponseOfficialStoresInner.listFromJson(json[r'official_stores']),
        microTrailer: mapValueOfType<String>(json, r'micro_trailer'),
      );
    }
    return null;
  }

  static List<RetrieveGameById200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RetrieveGameById200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RetrieveGameById200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RetrieveGameById200Response> mapFromJson(dynamic json) {
    final map = <String, RetrieveGameById200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RetrieveGameById200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RetrieveGameById200Response-objects as value to a dart map
  static Map<String, List<RetrieveGameById200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RetrieveGameById200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RetrieveGameById200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

