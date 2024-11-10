import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user creating a Telegram Premium giveaway
@immutable
class StorePaymentPurposePremiumGiveaway extends StorePaymentPurpose {
  const StorePaymentPurposePremiumGiveaway({
    required this.parameters,
    required this.currency,
    required this.amount,
  });

  /// [parameters] Giveaway parameters
  final GiveawayParameters parameters;

  /// [currency] ISO 4217 currency code of the payment currency
  final String currency;

  /// [amount] Paid amount, in the smallest units of the currency
  final int amount;

  static const String constructor = 'storePaymentPurposePremiumGiveaway';

  static StorePaymentPurposePremiumGiveaway? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StorePaymentPurposePremiumGiveaway(
      parameters: GiveawayParameters.fromJson(
          json['parameters'] as Map<String, dynamic>?)!,
      currency: json['currency'] as String,
      amount: json['amount'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'parameters': parameters.toJson(),
        'currency': currency,
        'amount': amount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
