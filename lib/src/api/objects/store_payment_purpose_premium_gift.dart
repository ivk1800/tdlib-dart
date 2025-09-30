import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user gifting Telegram Premium to another user
@immutable
class StorePaymentPurposePremiumGift extends StorePaymentPurpose {
  const StorePaymentPurposePremiumGift({
    required this.currency,
    required this.amount,
    required this.userId,
    required this.text,
  });

  /// [currency] ISO 4217 currency code of the payment currency
  final String currency;

  /// [amount] Paid amount, in the smallest units of the currency
  final int amount;

  /// [userId] Identifiers of the user which will receive Telegram Premium
  final int userId;

  /// [text] Text to show along with the gift codes;
  /// 0-getOption("gift_text_length_max") characters. Only Bold, Italic,
  /// Underline, Strikethrough, Spoiler, and CustomEmoji entities are allowed
  final FormattedText text;

  static const String constructor = 'storePaymentPurposePremiumGift';

  static StorePaymentPurposePremiumGift? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StorePaymentPurposePremiumGift(
      currency: json['currency'] as String,
      amount: json['amount'] as int,
      userId: json['user_id'] as int,
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
    'text': text.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
