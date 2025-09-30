import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is a purchase of a subscription from a bot or a business
/// account by the current user; for regular users only
@immutable
class StarTransactionTypeBotSubscriptionPurchase extends StarTransactionType {
  const StarTransactionTypeBotSubscriptionPurchase({
    required this.userId,
    required this.subscriptionPeriod,
    required this.productInfo,
  });

  /// [userId] Identifier of the bot or the business account user that created
  /// the subscription link
  final int userId;

  /// [subscriptionPeriod] The number of seconds between consecutive Telegram
  /// Star debitings
  final int subscriptionPeriod;

  /// [productInfo] Information about the bought subscription
  final ProductInfo productInfo;

  static const String constructor =
      'starTransactionTypeBotSubscriptionPurchase';

  static StarTransactionTypeBotSubscriptionPurchase? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeBotSubscriptionPurchase(
      userId: json['user_id'] as int,
      subscriptionPeriod: json['subscription_period'] as int,
      productInfo: ProductInfo.fromJson(
        json['product_info'] as Map<String, dynamic>?,
      )!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'subscription_period': subscriptionPeriod,
    'product_info': productInfo.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
