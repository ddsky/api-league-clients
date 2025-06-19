//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RetrieveArtworkById200Response {
  /// Returns a new [RetrieveArtworkById200Response] instance.
  RetrieveArtworkById200Response({
    this.id,
    this.title,
    this.image,
    this.startDate,
    this.endDate,
    this.description,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  String? title;

  String? image;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? startDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? endDate;

  String? description;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RetrieveArtworkById200Response &&
    other.id == id &&
    other.title == title &&
    other.image == image &&
    other.startDate == startDate &&
    other.endDate == endDate &&
    other.description == description;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (startDate == null ? 0 : startDate!.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (description == null ? 0 : description!.hashCode);

  @override
  String toString() => 'RetrieveArtworkById200Response[id=$id, title=$title, image=$image, startDate=$startDate, endDate=$endDate, description=$description]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    if (this.startDate != null) {
      json[r'start_date'] = this.startDate;
    } else {
      json[r'start_date'] = null;
    }
    if (this.endDate != null) {
      json[r'end_date'] = this.endDate;
    } else {
      json[r'end_date'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    return json;
  }

  /// Returns a new [RetrieveArtworkById200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RetrieveArtworkById200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RetrieveArtworkById200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RetrieveArtworkById200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RetrieveArtworkById200Response(
        id: mapValueOfType<int>(json, r'id'),
        title: mapValueOfType<String>(json, r'title'),
        image: mapValueOfType<String>(json, r'image'),
        startDate: mapValueOfType<int>(json, r'start_date'),
        endDate: mapValueOfType<int>(json, r'end_date'),
        description: mapValueOfType<String>(json, r'description'),
      );
    }
    return null;
  }

  static List<RetrieveArtworkById200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RetrieveArtworkById200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RetrieveArtworkById200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RetrieveArtworkById200Response> mapFromJson(dynamic json) {
    final map = <String, RetrieveArtworkById200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RetrieveArtworkById200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RetrieveArtworkById200Response-objects as value to a dart map
  static Map<String, List<RetrieveArtworkById200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RetrieveArtworkById200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RetrieveArtworkById200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

