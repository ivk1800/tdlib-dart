import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is a purchase of a subscription to a channel chat by the
/// current user; for regular users only
@immutable
class StarTransactionTypeChannelSubscriptionPurchase
    extends StarTransactionType {
  const StarTransactionTypeChannelSubscriptionPurchase({
    required this.chatId,
    required this.subscriptionPeriod,
  });

  /// [chatId] Identifier of the channel chat that created the subscription
  final int chatId;

  /// [subscriptionPeriod] The number of seconds between consecutive Telegram
  /// Star debitings
  final int subscriptionPeriod;

  static const String constructor =
      'starTransactionTypeChannelSubscriptionPurchase';

  static StarTransactionTypeChannelSubscriptionPurchase? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeChannelSubscriptionPurchase(
      chatId: json['chat_id'] as int,
      subscriptionPeriod: json['subscription_period'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'subscription_period': subscriptionPeriod,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
