import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns an emoji for the given country. Returns an empty string on
/// failure. Can be called synchronously
/// Returns [Text]
@immutable
class GetCountryFlagEmoji extends TdFunction {
  const GetCountryFlagEmoji({
    required this.countryCode,
  });

  /// [countryCode] A two-letter ISO 3166-1 alpha-2 country code as received
  /// from getCountries
  final String countryCode;

  static const String constructor = 'getCountryFlagEmoji';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'country_code': countryCode,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
