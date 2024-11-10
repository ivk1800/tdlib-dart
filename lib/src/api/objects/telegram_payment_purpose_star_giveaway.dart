import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user creating a Telegram Star giveaway
@immutable
class TelegramPaymentPurposeStarGiveaway extends TelegramPaymentPurpose {
  const TelegramPaymentPurposeStarGiveaway({
    required this.parameters,
    required this.currency,
    required this.amount,
    required this.winnerCount,
    required this.starCount,
  });

  /// [parameters] Giveaway parameters
  final GiveawayParameters parameters;

  /// [currency] ISO 4217 currency code of the payment currency
  final String currency;

  /// [amount] Paid amount, in the smallest units of the currency
  final int amount;

  /// [winnerCount] The number of users to receive Telegram Stars
  final int winnerCount;

  /// [starCount] The number of Telegram Stars to be distributed through the
  /// giveaway
  final int starCount;

  static const String constructor = 'telegramPaymentPurposeStarGiveaway';

  static TelegramPaymentPurposeStarGiveaway? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TelegramPaymentPurposeStarGiveaway(
      parameters: GiveawayParameters.fromJson(
          json['parameters'] as Map<String, dynamic>?)!,
      currency: json['currency'] as String,
      amount: json['amount'] as int,
      winnerCount: json['winner_count'] as int,
      starCount: json['star_count'] as int,
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
        'star_count': starCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
