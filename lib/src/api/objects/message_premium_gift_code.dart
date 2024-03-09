import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A Telegram Premium gift code was created for the user
@immutable
class MessagePremiumGiftCode extends MessageContent {
  const MessagePremiumGiftCode({
    this.creatorId,
    required this.isFromGiveaway,
    required this.isUnclaimed,
    required this.currency,
    required this.amount,
    required this.cryptocurrency,
    required this.cryptocurrencyAmount,
    required this.monthCount,
    this.sticker,
    required this.code,
  });

  /// [creatorId] Identifier of a chat or a user that created the gift code; may
  /// be null if unknown
  final MessageSender? creatorId;

  /// [isFromGiveaway] True, if the gift code was created for a giveaway
  final bool isFromGiveaway;

  /// [isUnclaimed] True, if the winner for the corresponding Telegram Premium
  /// subscription wasn't chosen
  final bool isUnclaimed;

  /// [currency] Currency for the paid amount; empty if unknown
  final String currency;

  /// [amount] The paid amount, in the smallest units of the currency; 0 if
  /// unknown
  final int amount;

  /// [cryptocurrency] Cryptocurrency used to pay for the gift; may be empty if
  /// none or unknown
  final String cryptocurrency;

  /// [cryptocurrencyAmount] The paid amount, in the smallest units of the
  /// cryptocurrency; 0 if unknown
  final int cryptocurrencyAmount;

  /// [monthCount] Number of months the Telegram Premium subscription will be
  /// active after code activation
  final int monthCount;

  /// [sticker] A sticker to be shown in the message; may be null if unknown
  final Sticker? sticker;

  /// [code] The gift code
  final String code;

  static const String constructor = 'messagePremiumGiftCode';

  static MessagePremiumGiftCode? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePremiumGiftCode(
      creatorId:
          MessageSender.fromJson(json['creator_id'] as Map<String, dynamic>?),
      isFromGiveaway: json['is_from_giveaway'] as bool,
      isUnclaimed: json['is_unclaimed'] as bool,
      currency: json['currency'] as String,
      amount: json['amount'] as int,
      cryptocurrency: json['cryptocurrency'] as String,
      cryptocurrencyAmount: int.tryParse(json['cryptocurrency_amount']) ?? 0,
      monthCount: json['month_count'] as int,
      sticker: Sticker.fromJson(json['sticker'] as Map<String, dynamic>?),
      code: json['code'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'creator_id': creatorId?.toJson(),
        'is_from_giveaway': isFromGiveaway,
        'is_unclaimed': isUnclaimed,
        'currency': currency,
        'amount': amount,
        'cryptocurrency': cryptocurrency,
        'cryptocurrency_amount': cryptocurrencyAmount.toString(),
        'month_count': monthCount,
        'sticker': sticker?.toJson(),
        'code': code,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
