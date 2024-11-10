import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user buying Telegram Stars
@immutable
class StorePaymentPurposeStars extends StorePaymentPurpose {
  const StorePaymentPurposeStars({
    required this.currency,
    required this.amount,
    required this.starCount,
  });

  /// [currency] ISO 4217 currency code of the payment currency
  final String currency;

  /// [amount] Paid amount, in the smallest units of the currency
  final int amount;

  /// [starCount] Number of bought Telegram Stars
  final int starCount;

  static const String constructor = 'storePaymentPurposeStars';

  static StorePaymentPurposeStars? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StorePaymentPurposeStars(
      currency: json['currency'] as String,
      amount: json['amount'] as int,
      starCount: json['star_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'currency': currency,
        'amount': amount,
        'star_count': starCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
