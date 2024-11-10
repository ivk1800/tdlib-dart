import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user is eligible for the giveaway
@immutable
class GiveawayParticipantStatusEligible extends GiveawayParticipantStatus {
  const GiveawayParticipantStatusEligible();

  static const String constructor = 'giveawayParticipantStatusEligible';

  static GiveawayParticipantStatusEligible? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const GiveawayParticipantStatusEligible();
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
