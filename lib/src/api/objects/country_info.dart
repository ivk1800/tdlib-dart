import '../tdapi.dart';

/// Contains information about a country
class CountryInfo extends TdObject {
  CountryInfo(
      {required this.countryCode,
      required this.name,
      required this.englishName,
      required this.isHidden,
      required this.callingCodes});

  /// [countryCode] A two-letter ISO 3166-1 alpha-2 country code
  final String countryCode;

  /// [name] Native name of the country
  final String name;

  /// [englishName] English name of the country
  final String englishName;

  /// [isHidden] True, if the country should be hidden from the list of all
  /// countries
  final bool isHidden;

  /// [callingCodes] List of country calling codes
  final List<String> callingCodes;

  static const String CONSTRUCTOR = 'countryInfo';

  static CountryInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CountryInfo(
        countryCode: json['country_code'],
        name: json['name'],
        englishName: json['english_name'],
        isHidden: json['is_hidden'],
        callingCodes: List<String>.from(
            (json['calling_codes'] ?? []).map((item) => item).toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'country_code': this.countryCode,
        'name': this.name,
        'english_name': this.englishName,
        'is_hidden': this.isHidden,
        'calling_codes': callingCodes.map((item) => item).toList(),
        '@type': CONSTRUCTOR
      };
}
