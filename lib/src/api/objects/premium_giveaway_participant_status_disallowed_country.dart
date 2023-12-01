import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user can't participate in the giveaway, because they phone number is
/// from a disallowed country
@immutable
class PremiumGiveawayParticipantStatusDisallowedCountry
    extends PremiumGiveawayParticipantStatus {
  const PremiumGiveawayParticipantStatusDisallowedCountry({
    required this.userCountryCode,
  });

  /// [userCountryCode] A two-letter ISO 3166-1 alpha-2 country code of the
  /// user's country
  final String userCountryCode;

  static const String constructor =
      'premiumGiveawayParticipantStatusDisallowedCountry';

  static PremiumGiveawayParticipantStatusDisallowedCountry? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PremiumGiveawayParticipantStatusDisallowedCountry(
      userCountryCode: json['user_country_code'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_country_code': userCountryCode,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
