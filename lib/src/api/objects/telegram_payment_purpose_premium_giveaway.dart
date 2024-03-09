import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user creating a Telegram Premium giveaway
@immutable
class TelegramPaymentPurposePremiumGiveaway extends TelegramPaymentPurpose {
  const TelegramPaymentPurposePremiumGiveaway({
    required this.parameters,
    required this.currency,
    required this.amount,
    required this.winnerCount,
    required this.monthCount,
  });

  /// [parameters] Giveaway parameters
  final PremiumGiveawayParameters parameters;

  /// [currency] ISO 4217 currency code of the payment currency
  final String currency;

  /// [amount] Paid amount, in the smallest units of the currency
  final int amount;

  /// [winnerCount] Number of users which will be able to activate the gift
  /// codes
  final int winnerCount;

  /// [monthCount] Number of months the Telegram Premium subscription will be
  /// active for the users
  final int monthCount;

  static const String constructor = 'telegramPaymentPurposePremiumGiveaway';

  static TelegramPaymentPurposePremiumGiveaway? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TelegramPaymentPurposePremiumGiveaway(
      parameters: PremiumGiveawayParameters.fromJson(
          json['parameters'] as Map<String, dynamic>?)!,
      currency: json['currency'] as String,
      amount: json['amount'] as int,
      winnerCount: json['winner_count'] as int,
      monthCount: json['month_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'parameters': parameters.toJson(),
        'currency': currency,
        'amount': amount,
        'winner_count': winnerCount,
        'month_count': monthCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
