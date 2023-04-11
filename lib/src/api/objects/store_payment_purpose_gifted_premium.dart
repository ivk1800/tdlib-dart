import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user gifted Telegram Premium to another user
@immutable
class StorePaymentPurposeGiftedPremium extends StorePaymentPurpose {
  const StorePaymentPurposeGiftedPremium({
    required this.userId,
    required this.currency,
    required this.amount,
  });

  /// [userId] Identifier of the user for which Premium was gifted
  final int userId;

  /// [currency] ISO 4217 currency code of the payment currency
  final String currency;

  /// [amount] Paid amount, in the smallest units of the currency
  final int amount;

  static const String constructor = 'storePaymentPurposeGiftedPremium';

  static StorePaymentPurposeGiftedPremium? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StorePaymentPurposeGiftedPremium(
      userId: json['user_id'] as int,
      currency: json['currency'] as String,
      amount: json['amount'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'currency': currency,
        'amount': amount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
