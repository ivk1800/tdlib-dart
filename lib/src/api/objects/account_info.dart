import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains basic information about another user that started a chat with the
/// current user
@immutable
class AccountInfo extends TdObject {
  const AccountInfo({
    required this.registrationMonth,
    required this.registrationYear,
    required this.phoneNumberCountryCode,
    required this.lastNameChangeDate,
    required this.lastPhotoChangeDate,
  });

  /// [registrationMonth] Month when the user was registered in Telegram; 0-12;
  /// may be 0 if unknown
  final int registrationMonth;

  /// [registrationYear] Year when the user was registered in Telegram; 0-9999;
  /// may be 0 if unknown
  final int registrationYear;

  /// [phoneNumberCountryCode] A two-letter ISO 3166-1 alpha-2 country code
  /// based on the phone number of the user; may be empty if unknown
  final String phoneNumberCountryCode;

  /// [lastNameChangeDate] Point in time (Unix timestamp) when the user changed
  /// name last time; 0 if unknown
  final int lastNameChangeDate;

  /// [lastPhotoChangeDate] Point in time (Unix timestamp) when the user changed
  /// photo last time; 0 if unknown
  final int lastPhotoChangeDate;

  static const String constructor = 'accountInfo';

  static AccountInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AccountInfo(
      registrationMonth: json['registration_month'] as int,
      registrationYear: json['registration_year'] as int,
      phoneNumberCountryCode: json['phone_number_country_code'] as String,
      lastNameChangeDate: json['last_name_change_date'] as int,
      lastPhotoChangeDate: json['last_photo_change_date'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'registration_month': registrationMonth,
    'registration_year': registrationYear,
    'phone_number_country_code': phoneNumberCountryCode,
    'last_name_change_date': lastNameChangeDate,
    'last_photo_change_date': lastPhotoChangeDate,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
