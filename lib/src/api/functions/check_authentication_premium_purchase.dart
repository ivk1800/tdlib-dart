import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Checks whether an in-store purchase of Telegram Premium is possible before
/// authorization. Works only when the current authorization state is
/// authorizationStateWaitPremiumPurchase
/// Returns [Ok]
@immutable
class CheckAuthenticationPremiumPurchase extends TdFunction {
  const CheckAuthenticationPremiumPurchase({
    required this.currency,
    required this.amount,
  });

  /// [currency] ISO 4217 currency code of the payment currency
  final String currency;

  /// [amount] Paid amount, in the smallest units of the currency
  final int amount;

  static const String constructor = 'checkAuthenticationPremiumPurchase';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'currency': currency,
    'amount': amount,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
