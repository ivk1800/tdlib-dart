import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes gift types that are accepted by a user
@immutable
class AcceptedGiftTypes extends TdObject {
  const AcceptedGiftTypes({
    required this.unlimitedGifts,
    required this.limitedGifts,
    required this.upgradedGifts,
    required this.premiumSubscription,
  });

  /// [unlimitedGifts] True, if unlimited regular gifts are accepted
  final bool unlimitedGifts;

  /// [limitedGifts] True, if limited regular gifts are accepted
  final bool limitedGifts;

  /// [upgradedGifts] True, if upgraded gifts and regular gifts that can be
  /// upgraded for free are accepted
  final bool upgradedGifts;

  /// [premiumSubscription] True, if Telegram Premium subscription is accepted
  final bool premiumSubscription;

  static const String constructor = 'acceptedGiftTypes';

  static AcceptedGiftTypes? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AcceptedGiftTypes(
      unlimitedGifts: json['unlimited_gifts'] as bool,
      limitedGifts: json['limited_gifts'] as bool,
      upgradedGifts: json['upgraded_gifts'] as bool,
      premiumSubscription: json['premium_subscription'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'unlimited_gifts': unlimitedGifts,
    'limited_gifts': limitedGifts,
    'upgraded_gifts': upgradedGifts,
    'premium_subscription': premiumSubscription,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
