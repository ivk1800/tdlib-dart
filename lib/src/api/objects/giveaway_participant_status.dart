import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about status of a user in a giveaway
@immutable
abstract class GiveawayParticipantStatus extends TdObject {
  const GiveawayParticipantStatus();

  static const String constructor = 'giveawayParticipantStatus';

  /// Inherited by:
  /// [GiveawayParticipantStatusAdministrator]
  /// [GiveawayParticipantStatusAlreadyWasMember]
  /// [GiveawayParticipantStatusDisallowedCountry]
  /// [GiveawayParticipantStatusEligible]
  /// [GiveawayParticipantStatusParticipating]
  static GiveawayParticipantStatus? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case GiveawayParticipantStatusAdministrator.constructor:
        return GiveawayParticipantStatusAdministrator.fromJson(json);
      case GiveawayParticipantStatusAlreadyWasMember.constructor:
        return GiveawayParticipantStatusAlreadyWasMember.fromJson(json);
      case GiveawayParticipantStatusDisallowedCountry.constructor:
        return GiveawayParticipantStatusDisallowedCountry.fromJson(json);
      case GiveawayParticipantStatusEligible.constructor:
        return GiveawayParticipantStatusEligible.fromJson(json);
      case GiveawayParticipantStatusParticipating.constructor:
        return GiveawayParticipantStatusParticipating.fromJson(json);
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
