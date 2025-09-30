import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is a sale of a subscription by the bot; for bots only
@immutable
class StarTransactionTypeBotSubscriptionSale extends StarTransactionType {
  const StarTransactionTypeBotSubscriptionSale({
    required this.userId,
    required this.subscriptionPeriod,
    required this.productInfo,
    required this.invoicePayload,
    this.affiliate,
  });

  /// [userId] Identifier of the user that bought the subscription
  final int userId;

  /// [subscriptionPeriod] The number of seconds between consecutive Telegram
  /// Star debitings
  final int subscriptionPeriod;

  /// [productInfo] Information about the bought subscription
  final ProductInfo productInfo;

  /// [invoicePayload] Invoice payload
  final String invoicePayload;

  /// [affiliate] Information about the affiliate which received commission from
  /// the transaction; may be null if none
  final AffiliateInfo? affiliate;

  static const String constructor = 'starTransactionTypeBotSubscriptionSale';

  static StarTransactionTypeBotSubscriptionSale? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeBotSubscriptionSale(
      userId: json['user_id'] as int,
      subscriptionPeriod: json['subscription_period'] as int,
      productInfo: ProductInfo.fromJson(
        json['product_info'] as Map<String, dynamic>?,
      )!,
      invoicePayload: json['invoice_payload'] as String,
      affiliate: AffiliateInfo.fromJson(
        json['affiliate'] as Map<String, dynamic>?,
      ),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'subscription_period': subscriptionPeriod,
    'product_info': productInfo.toJson(),
    'invoice_payload': invoicePayload,
    'affiliate': affiliate?.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
