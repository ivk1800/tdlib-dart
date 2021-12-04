import '../tdapi.dart';

/// Returns an IETF language tag of the language preferred in the country,
/// which must be used to fill native fields in Telegram Passport personal
/// details. Returns a 404 error if unknown
/// Returns [Text]
class GetPreferredCountryLanguage extends TdFunction {
  GetPreferredCountryLanguage({required this.countryCode});

  /// [countryCode] A two-letter ISO 3166-1 alpha-2 country code
  final String countryCode;

  static const String CONSTRUCTOR = 'getPreferredCountryLanguage';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'country_code': this.countryCode, '@type': CONSTRUCTOR};
}
