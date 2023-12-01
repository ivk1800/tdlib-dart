import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a purpose of a payment toward Telegram
@immutable
abstract class TelegramPaymentPurpose extends TdObject {
  const TelegramPaymentPurpose();

  static const String constructor = 'telegramPaymentPurpose';

  /// Inherited by:
  /// [TelegramPaymentPurposePremiumGiftCodes]
  /// [TelegramPaymentPurposePremiumGiveaway]
  static TelegramPaymentPurpose? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case TelegramPaymentPurposePremiumGiftCodes.constructor:
        return TelegramPaymentPurposePremiumGiftCodes.fromJson(json);
      case TelegramPaymentPurposePremiumGiveaway.constructor:
        return TelegramPaymentPurposePremiumGiveaway.fromJson(json);
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
