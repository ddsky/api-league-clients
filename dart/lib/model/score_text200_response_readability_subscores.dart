//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ScoreText200ResponseReadabilitySubscores {
  /// Returns a new [ScoreText200ResponseReadabilitySubscores] instance.
  ScoreText200ResponseReadabilitySubscores({
    this.readingTimeSeconds,
    this.forcast,
    this.flesch,
    this.smog,
    this.ari,
    this.lix,
    this.colemanLiau,
    this.kincaid,
    this.fog,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? readingTimeSeconds;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? forcast;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? flesch;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? smog;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? ari;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? lix;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? colemanLiau;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? kincaid;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? fog;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ScoreText200ResponseReadabilitySubscores &&
    other.readingTimeSeconds == readingTimeSeconds &&
    other.forcast == forcast &&
    other.flesch == flesch &&
    other.smog == smog &&
    other.ari == ari &&
    other.lix == lix &&
    other.colemanLiau == colemanLiau &&
    other.kincaid == kincaid &&
    other.fog == fog;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (readingTimeSeconds == null ? 0 : readingTimeSeconds!.hashCode) +
    (forcast == null ? 0 : forcast!.hashCode) +
    (flesch == null ? 0 : flesch!.hashCode) +
    (smog == null ? 0 : smog!.hashCode) +
    (ari == null ? 0 : ari!.hashCode) +
    (lix == null ? 0 : lix!.hashCode) +
    (colemanLiau == null ? 0 : colemanLiau!.hashCode) +
    (kincaid == null ? 0 : kincaid!.hashCode) +
    (fog == null ? 0 : fog!.hashCode);

  @override
  String toString() => 'ScoreText200ResponseReadabilitySubscores[readingTimeSeconds=$readingTimeSeconds, forcast=$forcast, flesch=$flesch, smog=$smog, ari=$ari, lix=$lix, colemanLiau=$colemanLiau, kincaid=$kincaid, fog=$fog]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.readingTimeSeconds != null) {
      json[r'reading_time_seconds'] = this.readingTimeSeconds;
    } else {
      json[r'reading_time_seconds'] = null;
    }
    if (this.forcast != null) {
      json[r'forcast'] = this.forcast;
    } else {
      json[r'forcast'] = null;
    }
    if (this.flesch != null) {
      json[r'flesch'] = this.flesch;
    } else {
      json[r'flesch'] = null;
    }
    if (this.smog != null) {
      json[r'smog'] = this.smog;
    } else {
      json[r'smog'] = null;
    }
    if (this.ari != null) {
      json[r'ari'] = this.ari;
    } else {
      json[r'ari'] = null;
    }
    if (this.lix != null) {
      json[r'lix'] = this.lix;
    } else {
      json[r'lix'] = null;
    }
    if (this.colemanLiau != null) {
      json[r'coleman_liau'] = this.colemanLiau;
    } else {
      json[r'coleman_liau'] = null;
    }
    if (this.kincaid != null) {
      json[r'kincaid'] = this.kincaid;
    } else {
      json[r'kincaid'] = null;
    }
    if (this.fog != null) {
      json[r'fog'] = this.fog;
    } else {
      json[r'fog'] = null;
    }
    return json;
  }

  /// Returns a new [ScoreText200ResponseReadabilitySubscores] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScoreText200ResponseReadabilitySubscores? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ScoreText200ResponseReadabilitySubscores[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ScoreText200ResponseReadabilitySubscores[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ScoreText200ResponseReadabilitySubscores(
        readingTimeSeconds: mapValueOfType<int>(json, r'reading_time_seconds'),
        forcast: num.parse('${json[r'forcast']}'),
        flesch: num.parse('${json[r'flesch']}'),
        smog: num.parse('${json[r'smog']}'),
        ari: num.parse('${json[r'ari']}'),
        lix: num.parse('${json[r'lix']}'),
        colemanLiau: num.parse('${json[r'coleman_liau']}'),
        kincaid: num.parse('${json[r'kincaid']}'),
        fog: num.parse('${json[r'fog']}'),
      );
    }
    return null;
  }

  static List<ScoreText200ResponseReadabilitySubscores> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScoreText200ResponseReadabilitySubscores>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScoreText200ResponseReadabilitySubscores.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScoreText200ResponseReadabilitySubscores> mapFromJson(dynamic json) {
    final map = <String, ScoreText200ResponseReadabilitySubscores>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScoreText200ResponseReadabilitySubscores.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScoreText200ResponseReadabilitySubscores-objects as value to a dart map
  static Map<String, List<ScoreText200ResponseReadabilitySubscores>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ScoreText200ResponseReadabilitySubscores>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ScoreText200ResponseReadabilitySubscores.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

