import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes an option for creating Telegram Premium gift codes
@immutable
class PremiumGiftCodePaymentOption extends TdObject {
  const PremiumGiftCodePaymentOption({
    required this.currency,
    required this.amount,
    required this.userCount,
    required this.monthCount,
    required this.storeProductId,
    required this.storeProductQuantity,
  });

  /// [currency] ISO 4217 currency code for Telegram Premium gift code payment
  final String currency;

  /// [amount] The amount to pay, in the smallest units of the currency
  final int amount;

  /// [userCount] Number of users which will be able to activate the gift codes
  final int userCount;

  /// [monthCount] Number of months the Telegram Premium subscription will be
  /// active
  final int monthCount;

  /// [storeProductId] Identifier of the store product associated with the
  /// option; may be empty if none
  final String storeProductId;

  /// [storeProductQuantity] Number of times the store product must be paid
  final int storeProductQuantity;

  static const String constructor = 'premiumGiftCodePaymentOption';

  static PremiumGiftCodePaymentOption? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PremiumGiftCodePaymentOption(
      currency: json['currency'] as String,
      amount: json['amount'] as int,
      userCount: json['user_count'] as int,
      monthCount: json['month_count'] as int,
      storeProductId: json['store_product_id'] as String,
      storeProductQuantity: json['store_product_quantity'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'currency': currency,
        'amount': amount,
        'user_count': userCount,
        'month_count': monthCount,
        'store_product_id': storeProductId,
        'store_product_quantity': storeProductQuantity,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
