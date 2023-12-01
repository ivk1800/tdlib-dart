import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about status of a user in a Telegram Premium giveaway
@immutable
abstract class PremiumGiveawayParticipantStatus extends TdObject {
  const PremiumGiveawayParticipantStatus();

  static const String constructor = 'premiumGiveawayParticipantStatus';

  /// Inherited by:
  /// [PremiumGiveawayParticipantStatusAdministrator]
  /// [PremiumGiveawayParticipantStatusAlreadyWasMember]
  /// [PremiumGiveawayParticipantStatusDisallowedCountry]
  /// [PremiumGiveawayParticipantStatusEligible]
  /// [PremiumGiveawayParticipantStatusParticipating]
  static PremiumGiveawayParticipantStatus? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PremiumGiveawayParticipantStatusAdministrator.constructor:
        return PremiumGiveawayParticipantStatusAdministrator.fromJson(json);
      case PremiumGiveawayParticipantStatusAlreadyWasMember.constructor:
        return PremiumGiveawayParticipantStatusAlreadyWasMember.fromJson(json);
      case PremiumGiveawayParticipantStatusDisallowedCountry.constructor:
        return PremiumGiveawayParticipantStatusDisallowedCountry.fromJson(json);
      case PremiumGiveawayParticipantStatusEligible.constructor:
        return PremiumGiveawayParticipantStatusEligible.fromJson(json);
      case PremiumGiveawayParticipantStatusParticipating.constructor:
        return PremiumGiveawayParticipantStatusParticipating.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
