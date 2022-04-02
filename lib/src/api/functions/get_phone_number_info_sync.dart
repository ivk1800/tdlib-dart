import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns information about a phone number by its prefix synchronously.
/// getCountries must be called at least once after changing localization to
/// the specified language if properly localized country information is
/// expected. Can be called synchronously
/// Returns [PhoneNumberInfo]
class GetPhoneNumberInfoSync extends TdFunction {
  GetPhoneNumberInfoSync(
      {required this.languageCode, required this.phoneNumberPrefix});

  /// [languageCode] A two-letter ISO 639-1 country code for country information
  /// localization
  final String languageCode;

  /// [phoneNumberPrefix] The phone number prefix
  final String phoneNumberPrefix;

  static const String CONSTRUCTOR = 'getPhoneNumberInfoSync';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'language_code': this.languageCode,
        'phone_number_prefix': this.phoneNumberPrefix,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
