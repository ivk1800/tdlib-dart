import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Telegram Premium was gifted to the user
@immutable
class MessageGiftedPremium extends MessageContent {
  const MessageGiftedPremium({
    required this.currency,
    required this.amount,
    required this.monthCount,
    this.sticker,
  });

  /// [currency] Currency for the paid amount
  final String currency;

  /// [amount] The paid amount, in the smallest units of the currency
  final int amount;

  /// [monthCount] Number of month the Telegram Premium subscription will be
  /// active
  final int monthCount;

  /// [sticker] A sticker to be shown in the message; may be null if unknown
  final Sticker? sticker;

  static const String constructor = 'messageGiftedPremium';

  static MessageGiftedPremium? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageGiftedPremium(
      currency: json['currency'] as String,
      amount: json['amount'] as int,
      monthCount: json['month_count'] as int,
      sticker: Sticker.fromJson(json['sticker'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'currency': currency,
        'amount': amount,
        'month_count': monthCount,
        'sticker': sticker?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
