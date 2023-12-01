import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user creating Telegram Premium gift codes for other users
@immutable
class StorePaymentPurposePremiumGiftCodes extends StorePaymentPurpose {
  const StorePaymentPurposePremiumGiftCodes({
    required this.boostedChatId,
    required this.currency,
    required this.amount,
    required this.userIds,
  });

  /// [boostedChatId] Identifier of the channel chat, which will be
  /// automatically boosted by the users for duration of the Premium
  /// subscription and which is administered by the user; 0 if none
  final int boostedChatId;

  /// [currency] ISO 4217 currency code of the payment currency
  final String currency;

  /// [amount] Paid amount, in the smallest units of the currency
  final int amount;

  /// [userIds] Identifiers of the users which can activate the gift codes
  final List<int> userIds;

  static const String constructor = 'storePaymentPurposePremiumGiftCodes';

  static StorePaymentPurposePremiumGiftCodes? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StorePaymentPurposePremiumGiftCodes(
      boostedChatId: json['boosted_chat_id'] as int,
      currency: json['currency'] as String,
      amount: json['amount'] as int,
      userIds: List<int>.from(
          ((json['user_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'boosted_chat_id': boostedChatId,
        'currency': currency,
        'amount': amount,
        'user_ids': userIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
