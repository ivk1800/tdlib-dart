import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about Telegram Premium giveaway
@immutable
abstract class PremiumGiveawayInfo extends TdObject {
  const PremiumGiveawayInfo();

  static const String constructor = 'premiumGiveawayInfo';

  /// Inherited by:
  /// [PremiumGiveawayInfoCompleted]
  /// [PremiumGiveawayInfoOngoing]
  static PremiumGiveawayInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PremiumGiveawayInfoCompleted.constructor:
        return PremiumGiveawayInfoCompleted.fromJson(json);
      case PremiumGiveawayInfoOngoing.constructor:
        return PremiumGiveawayInfoOngoing.fromJson(json);
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
