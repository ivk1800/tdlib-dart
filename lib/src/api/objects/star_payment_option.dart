import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes an option for buying Telegram Stars. Use
/// telegramPaymentPurposeStars for out-of-store payments
@immutable
class StarPaymentOption extends TdObject {
  const StarPaymentOption({
    required this.currency,
    required this.amount,
    required this.starCount,
    required this.storeProductId,
    required this.isAdditional,
  });

  /// [currency] ISO 4217 currency code for the payment
  final String currency;

  /// [amount] The amount to pay, in the smallest units of the currency
  final int amount;

  /// [starCount] Number of Telegram Stars that will be purchased
  final int starCount;

  /// [storeProductId] Identifier of the store product associated with the
  /// option; may be empty if none
  final String storeProductId;

  /// [isAdditional] True, if the option must be shown only in the full list of
  /// payment options
  final bool isAdditional;

  static const String constructor = 'starPaymentOption';

  static StarPaymentOption? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarPaymentOption(
      currency: json['currency'] as String,
      amount: json['amount'] as int,
      starCount: json['star_count'] as int,
      storeProductId: json['store_product_id'] as String,
      isAdditional: json['is_additional'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'currency': currency,
        'amount': amount,
        'star_count': starCount,
        'store_product_id': storeProductId,
        'is_additional': isAdditional,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
