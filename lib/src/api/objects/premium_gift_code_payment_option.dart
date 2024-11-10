import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes an option for creating Telegram Premium gift codes or Telegram
/// Premium giveaway. Use telegramPaymentPurposePremiumGiftCodes or
/// telegramPaymentPurposePremiumGiveaway for out-of-store payments
@immutable
class PremiumGiftCodePaymentOption extends TdObject {
  const PremiumGiftCodePaymentOption({
    required this.currency,
    required this.amount,
    required this.discountPercentage,
    required this.winnerCount,
    required this.monthCount,
    required this.storeProductId,
    required this.storeProductQuantity,
    this.sticker,
  });

  /// [currency] ISO 4217 currency code for Telegram Premium gift code payment
  final String currency;

  /// [amount] The amount to pay, in the smallest units of the currency
  final int amount;

  /// [discountPercentage] The discount associated with this option, as a
  /// percentage
  final int discountPercentage;

  /// [winnerCount] Number of users which will be able to activate the gift
  /// codes
  final int winnerCount;

  /// [monthCount] Number of months the Telegram Premium subscription will be
  /// active
  final int monthCount;

  /// [storeProductId] Identifier of the store product associated with the
  /// option; may be empty if none
  final String storeProductId;

  /// [storeProductQuantity] Number of times the store product must be paid
  final int storeProductQuantity;

  /// [sticker] A sticker to be shown along with the gift code; may be null if
  /// unknown
  final Sticker? sticker;

  static const String constructor = 'premiumGiftCodePaymentOption';

  static PremiumGiftCodePaymentOption? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PremiumGiftCodePaymentOption(
      currency: json['currency'] as String,
      amount: json['amount'] as int,
      discountPercentage: json['discount_percentage'] as int,
      winnerCount: json['winner_count'] as int,
      monthCount: json['month_count'] as int,
      storeProductId: json['store_product_id'] as String,
      storeProductQuantity: json['store_product_quantity'] as int,
      sticker: Sticker.fromJson(json['sticker'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'currency': currency,
        'amount': amount,
        'discount_percentage': discountPercentage,
        'winner_count': winnerCount,
        'month_count': monthCount,
        'store_product_id': storeProductId,
        'store_product_quantity': storeProductQuantity,
        'sticker': sticker?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
