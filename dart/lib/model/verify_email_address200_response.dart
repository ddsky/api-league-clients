//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VerifyEmailAddress200Response {
  /// Returns a new [VerifyEmailAddress200Response] instance.
  VerifyEmailAddress200Response({
    this.email,
    this.domain,
    this.firstName,
    this.middleName,
    this.lastName,
    this.fullName,
    this.username,
    this.image,
    this.result,
    this.disposable,
    this.acceptAll,
    this.freeProvider,
  });

  String? email;

  String? domain;

  String? firstName;

  String? middleName;

  String? lastName;

  String? fullName;

  String? username;

  String? image;

  String? result;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? disposable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? acceptAll;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? freeProvider;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VerifyEmailAddress200Response &&
    other.email == email &&
    other.domain == domain &&
    other.firstName == firstName &&
    other.middleName == middleName &&
    other.lastName == lastName &&
    other.fullName == fullName &&
    other.username == username &&
    other.image == image &&
    other.result == result &&
    other.disposable == disposable &&
    other.acceptAll == acceptAll &&
    other.freeProvider == freeProvider;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (email == null ? 0 : email!.hashCode) +
    (domain == null ? 0 : domain!.hashCode) +
    (firstName == null ? 0 : firstName!.hashCode) +
    (middleName == null ? 0 : middleName!.hashCode) +
    (lastName == null ? 0 : lastName!.hashCode) +
    (fullName == null ? 0 : fullName!.hashCode) +
    (username == null ? 0 : username!.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (result == null ? 0 : result!.hashCode) +
    (disposable == null ? 0 : disposable!.hashCode) +
    (acceptAll == null ? 0 : acceptAll!.hashCode) +
    (freeProvider == null ? 0 : freeProvider!.hashCode);

  @override
  String toString() => 'VerifyEmailAddress200Response[email=$email, domain=$domain, firstName=$firstName, middleName=$middleName, lastName=$lastName, fullName=$fullName, username=$username, image=$image, result=$result, disposable=$disposable, acceptAll=$acceptAll, freeProvider=$freeProvider]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.domain != null) {
      json[r'domain'] = this.domain;
    } else {
      json[r'domain'] = null;
    }
    if (this.firstName != null) {
      json[r'first_name'] = this.firstName;
    } else {
      json[r'first_name'] = null;
    }
    if (this.middleName != null) {
      json[r'middle_name'] = this.middleName;
    } else {
      json[r'middle_name'] = null;
    }
    if (this.lastName != null) {
      json[r'last_name'] = this.lastName;
    } else {
      json[r'last_name'] = null;
    }
    if (this.fullName != null) {
      json[r'full_name'] = this.fullName;
    } else {
      json[r'full_name'] = null;
    }
    if (this.username != null) {
      json[r'username'] = this.username;
    } else {
      json[r'username'] = null;
    }
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    if (this.result != null) {
      json[r'result'] = this.result;
    } else {
      json[r'result'] = null;
    }
    if (this.disposable != null) {
      json[r'disposable'] = this.disposable;
    } else {
      json[r'disposable'] = null;
    }
    if (this.acceptAll != null) {
      json[r'accept_all'] = this.acceptAll;
    } else {
      json[r'accept_all'] = null;
    }
    if (this.freeProvider != null) {
      json[r'free_provider'] = this.freeProvider;
    } else {
      json[r'free_provider'] = null;
    }
    return json;
  }

  /// Returns a new [VerifyEmailAddress200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VerifyEmailAddress200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VerifyEmailAddress200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VerifyEmailAddress200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VerifyEmailAddress200Response(
        email: mapValueOfType<String>(json, r'email'),
        domain: mapValueOfType<String>(json, r'domain'),
        firstName: mapValueOfType<String>(json, r'first_name'),
        middleName: mapValueOfType<String>(json, r'middle_name'),
        lastName: mapValueOfType<String>(json, r'last_name'),
        fullName: mapValueOfType<String>(json, r'full_name'),
        username: mapValueOfType<String>(json, r'username'),
        image: mapValueOfType<String>(json, r'image'),
        result: mapValueOfType<String>(json, r'result'),
        disposable: mapValueOfType<bool>(json, r'disposable'),
        acceptAll: mapValueOfType<bool>(json, r'accept_all'),
        freeProvider: mapValueOfType<bool>(json, r'free_provider'),
      );
    }
    return null;
  }

  static List<VerifyEmailAddress200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VerifyEmailAddress200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VerifyEmailAddress200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VerifyEmailAddress200Response> mapFromJson(dynamic json) {
    final map = <String, VerifyEmailAddress200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VerifyEmailAddress200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VerifyEmailAddress200Response-objects as value to a dart map
  static Map<String, List<VerifyEmailAddress200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VerifyEmailAddress200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VerifyEmailAddress200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

