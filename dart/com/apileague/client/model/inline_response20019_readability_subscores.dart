//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse20019ReadabilitySubscores {
  /// Returns a new [InlineResponse20019ReadabilitySubscores] instance.
  InlineResponse20019ReadabilitySubscores({
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

  int readingTimeSeconds;

  num forcast;

  num flesch;

  num smog;

  num ari;

  num lix;

  num colemanLiau;

  num kincaid;

  num fog;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse20019ReadabilitySubscores &&
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
    (readingTimeSeconds == null ? 0 : readingTimeSeconds.hashCode) +
    (forcast == null ? 0 : forcast.hashCode) +
    (flesch == null ? 0 : flesch.hashCode) +
    (smog == null ? 0 : smog.hashCode) +
    (ari == null ? 0 : ari.hashCode) +
    (lix == null ? 0 : lix.hashCode) +
    (colemanLiau == null ? 0 : colemanLiau.hashCode) +
    (kincaid == null ? 0 : kincaid.hashCode) +
    (fog == null ? 0 : fog.hashCode);

  @override
  String toString() => 'InlineResponse20019ReadabilitySubscores[readingTimeSeconds=$readingTimeSeconds, forcast=$forcast, flesch=$flesch, smog=$smog, ari=$ari, lix=$lix, colemanLiau=$colemanLiau, kincaid=$kincaid, fog=$fog]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (readingTimeSeconds != null) {
      json[r'reading_time_seconds'] = readingTimeSeconds;
    }
    if (forcast != null) {
      json[r'forcast'] = forcast;
    }
    if (flesch != null) {
      json[r'flesch'] = flesch;
    }
    if (smog != null) {
      json[r'smog'] = smog;
    }
    if (ari != null) {
      json[r'ari'] = ari;
    }
    if (lix != null) {
      json[r'lix'] = lix;
    }
    if (colemanLiau != null) {
      json[r'coleman_liau'] = colemanLiau;
    }
    if (kincaid != null) {
      json[r'kincaid'] = kincaid;
    }
    if (fog != null) {
      json[r'fog'] = fog;
    }
    return json;
  }

  /// Returns a new [InlineResponse20019ReadabilitySubscores] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse20019ReadabilitySubscores fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse20019ReadabilitySubscores(
        readingTimeSeconds: mapValueOfType<int>(json, r'reading_time_seconds'),
        forcast: json[r'forcast'] == null
          ? null
          : num.parse(json[r'forcast'].toString()),
        flesch: json[r'flesch'] == null
          ? null
          : num.parse(json[r'flesch'].toString()),
        smog: json[r'smog'] == null
          ? null
          : num.parse(json[r'smog'].toString()),
        ari: json[r'ari'] == null
          ? null
          : num.parse(json[r'ari'].toString()),
        lix: json[r'lix'] == null
          ? null
          : num.parse(json[r'lix'].toString()),
        colemanLiau: json[r'coleman_liau'] == null
          ? null
          : num.parse(json[r'coleman_liau'].toString()),
        kincaid: json[r'kincaid'] == null
          ? null
          : num.parse(json[r'kincaid'].toString()),
        fog: json[r'fog'] == null
          ? null
          : num.parse(json[r'fog'].toString()),
      );
    }
    return null;
  }

  static List<InlineResponse20019ReadabilitySubscores> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse20019ReadabilitySubscores.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse20019ReadabilitySubscores>[];

  static Map<String, InlineResponse20019ReadabilitySubscores> mapFromJson(dynamic json) {
    final map = <String, InlineResponse20019ReadabilitySubscores>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse20019ReadabilitySubscores.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse20019ReadabilitySubscores-objects as value to a dart map
  static Map<String, List<InlineResponse20019ReadabilitySubscores>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse20019ReadabilitySubscores>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse20019ReadabilitySubscores.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

