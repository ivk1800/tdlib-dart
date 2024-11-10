import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a purpose of a payment toward Telegram
@immutable
abstract class TelegramPaymentPurpose extends TdObject {
  const TelegramPaymentPurpose();

  static const String constructor = 'telegramPaymentPurpose';

  /// Inherited by:
  /// [TelegramPaymentPurposeGiftedStars]
  /// [TelegramPaymentPurposeJoinChat]
  /// [TelegramPaymentPurposePremiumGiftCodes]
  /// [TelegramPaymentPurposePremiumGiveaway]
  /// [TelegramPaymentPurposeStarGiveaway]
  /// [TelegramPaymentPurposeStars]
  static TelegramPaymentPurpose? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case TelegramPaymentPurposeGiftedStars.constructor:
        return TelegramPaymentPurposeGiftedStars.fromJson(json);
      case TelegramPaymentPurposeJoinChat.constructor:
        return TelegramPaymentPurposeJoinChat.fromJson(json);
      case TelegramPaymentPurposePremiumGiftCodes.constructor:
        return TelegramPaymentPurposePremiumGiftCodes.fromJson(json);
      case TelegramPaymentPurposePremiumGiveaway.constructor:
        return TelegramPaymentPurposePremiumGiveaway.fromJson(json);
      case TelegramPaymentPurposeStarGiveaway.constructor:
        return TelegramPaymentPurposeStarGiveaway.fromJson(json);
      case TelegramPaymentPurposeStars.constructor:
        return TelegramPaymentPurposeStars.fromJson(json);
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
