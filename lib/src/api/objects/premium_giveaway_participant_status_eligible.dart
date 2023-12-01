import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user is eligible for the giveaway
@immutable
class PremiumGiveawayParticipantStatusEligible
    extends PremiumGiveawayParticipantStatus {
  const PremiumGiveawayParticipantStatusEligible();

  static const String constructor = 'premiumGiveawayParticipantStatusEligible';

  static PremiumGiveawayParticipantStatusEligible? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumGiveawayParticipantStatusEligible();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
