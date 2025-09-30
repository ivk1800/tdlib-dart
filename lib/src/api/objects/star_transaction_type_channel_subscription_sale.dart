import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is a sale of a subscription by the channel chat; for
/// channel chats only
@immutable
class StarTransactionTypeChannelSubscriptionSale extends StarTransactionType {
  const StarTransactionTypeChannelSubscriptionSale({
    required this.userId,
    required this.subscriptionPeriod,
  });

  /// [userId] Identifier of the user that bought the subscription
  final int userId;

  /// [subscriptionPeriod] The number of seconds between consecutive Telegram
  /// Star debitings
  final int subscriptionPeriod;

  static const String constructor =
      'starTransactionTypeChannelSubscriptionSale';

  static StarTransactionTypeChannelSubscriptionSale? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeChannelSubscriptionSale(
      userId: json['user_id'] as int,
      subscriptionPeriod: json['subscription_period'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'subscription_period': subscriptionPeriod,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
