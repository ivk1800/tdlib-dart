import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains the user's personal details
@immutable
class PersonalDetails extends TdObject {
  const PersonalDetails({
    required this.firstName,
    required this.middleName,
    required this.lastName,
    required this.nativeFirstName,
    required this.nativeMiddleName,
    required this.nativeLastName,
    required this.birthdate,
    required this.gender,
    required this.countryCode,
    required this.residenceCountryCode,
  });

  /// [firstName] First name of the user written in English; 1-255 characters
  final String firstName;

  /// [middleName] Middle name of the user written in English; 0-255 characters
  final String middleName;

  /// [lastName] Last name of the user written in English; 1-255 characters
  final String lastName;

  /// [nativeFirstName] Native first name of the user; 1-255 characters
  final String nativeFirstName;

  /// [nativeMiddleName] Native middle name of the user; 0-255 characters
  final String nativeMiddleName;

  /// [nativeLastName] Native last name of the user; 1-255 characters
  final String nativeLastName;

  /// [birthdate] Birthdate of the user
  final Date birthdate;

  /// [gender] Gender of the user, "male" or "female"
  final String gender;

  /// [countryCode] A two-letter ISO 3166-1 alpha-2 country code of the user's
  /// country
  final String countryCode;

  /// [residenceCountryCode] A two-letter ISO 3166-1 alpha-2 country code of the
  /// user's residence country
  final String residenceCountryCode;

  static const String constructor = 'personalDetails';

  static PersonalDetails? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PersonalDetails(
      firstName: json['first_name'] as String,
      middleName: json['middle_name'] as String,
      lastName: json['last_name'] as String,
      nativeFirstName: json['native_first_name'] as String,
      nativeMiddleName: json['native_middle_name'] as String,
      nativeLastName: json['native_last_name'] as String,
      birthdate: Date.fromJson(json['birthdate'] as Map<String, dynamic>?)!,
      gender: json['gender'] as String,
      countryCode: json['country_code'] as String,
      residenceCountryCode: json['residence_country_code'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'first_name': firstName,
        'middle_name': middleName,
        'last_name': lastName,
        'native_first_name': nativeFirstName,
        'native_middle_name': nativeMiddleName,
        'native_last_name': nativeLastName,
        'birthdate': birthdate.toJson(),
        'gender': gender,
        'country_code': countryCode,
        'residence_country_code': residenceCountryCode,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
