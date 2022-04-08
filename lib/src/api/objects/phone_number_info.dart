import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a phone number
@immutable
class PhoneNumberInfo extends TdObject {
  const PhoneNumberInfo({
    this.country,
    required this.countryCallingCode,
    required this.formattedPhoneNumber,
  });

  /// [country] Information about the country to which the phone number belongs;
  /// may be null
  final CountryInfo? country;

  /// [countryCallingCode] The part of the phone number denoting country calling
  /// code or its part
  final String countryCallingCode;

  /// [formattedPhoneNumber] The phone number without country calling code
  /// formatted accordingly to local rules. Expected digits are returned as '-',
  /// but even more digits might be entered by the user
  final String formattedPhoneNumber;

  static const String constructor = 'phoneNumberInfo';

  static PhoneNumberInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PhoneNumberInfo(
      country: CountryInfo.fromJson(json['country']),
      countryCallingCode: json['country_calling_code'],
      formattedPhoneNumber: json['formatted_phone_number'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'country': country?.toJson(),
        'country_calling_code': countryCallingCode,
        'formatted_phone_number': formattedPhoneNumber,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
