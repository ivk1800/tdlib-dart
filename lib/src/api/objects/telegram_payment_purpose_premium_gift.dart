import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user gifting Telegram Premium to another user
@immutable
class TelegramPaymentPurposePremiumGift extends TelegramPaymentPurpose {
  const TelegramPaymentPurposePremiumGift({
    required this.currency,
    required this.amount,
    required this.userId,
    required this.monthCount,
    required this.text,
  });

  /// [currency] ISO 4217 currency code of the payment currency, or "XTR" for
  /// payments in Telegram Stars
  final String currency;

  /// [amount] Paid amount, in the smallest units of the currency
  final int amount;

  /// [userId] Identifier of the user which will receive Telegram Premium
  final int userId;

  /// [monthCount] Number of months the Telegram Premium subscription will be
  /// active for the user
  final int monthCount;

  /// [text] Text to show to the user receiving Telegram Premium;
  /// 0-getOption("gift_text_length_max") characters. Only Bold, Italic,
  /// Underline, Strikethrough, Spoiler, and CustomEmoji entities are allowed
  final FormattedText text;

  static const String constructor = 'telegramPaymentPurposePremiumGift';

  static TelegramPaymentPurposePremiumGift? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return TelegramPaymentPurposePremiumGift(
      currency: json['currency'] as String,
      amount: json['amount'] as int,
      userId: json['user_id'] as int,
      monthCount: json['month_count'] as int,
      text: FormattedText.fromJson(json['text'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'currency': currency,
    'amount': amount,
    'user_id': userId,
    'month_count': monthCount,
    'text': text.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
