import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A payment has been received by the bot or the business account
@immutable
class MessagePaymentSuccessfulBot extends MessageContent {
  const MessagePaymentSuccessfulBot({
    required this.currency,
    required this.totalAmount,
    required this.subscriptionUntilDate,
    required this.isRecurring,
    required this.isFirstRecurring,
    required this.invoicePayload,
    this.shippingOptionId,
    this.orderInfo,
    required this.telegramPaymentChargeId,
    required this.providerPaymentChargeId,
  });

  /// [currency] Currency for price of the product
  final String currency;

  /// [totalAmount] Total price for the product, in the smallest units of the
  /// currency
  final int totalAmount;

  /// [subscriptionUntilDate] Point in time (Unix timestamp) when the
  /// subscription will expire; 0 if unknown or the payment isn't recurring
  final int subscriptionUntilDate;

  /// [isRecurring] True, if this is a recurring payment
  final bool isRecurring;

  /// [isFirstRecurring] True, if this is the first recurring payment
  final bool isFirstRecurring;

  /// [invoicePayload] Invoice payload
  final String invoicePayload;

  /// [shippingOptionId] Identifier of the shipping option chosen by the user;
  /// may be empty if not applicable; for bots only
  final String? shippingOptionId;

  /// [orderInfo] Information about the order; may be null; for bots only
  final OrderInfo? orderInfo;

  /// [telegramPaymentChargeId] Telegram payment identifier
  final String telegramPaymentChargeId;

  /// [providerPaymentChargeId] Provider payment identifier
  final String providerPaymentChargeId;

  static const String constructor = 'messagePaymentSuccessfulBot';

  static MessagePaymentSuccessfulBot? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePaymentSuccessfulBot(
      currency: json['currency'] as String,
      totalAmount: json['total_amount'] as int,
      subscriptionUntilDate: json['subscription_until_date'] as int,
      isRecurring: json['is_recurring'] as bool,
      isFirstRecurring: json['is_first_recurring'] as bool,
      invoicePayload: json['invoice_payload'] as String,
      shippingOptionId: json['shipping_option_id'] as String?,
      orderInfo: OrderInfo.fromJson(
        json['order_info'] as Map<String, dynamic>?,
      ),
      telegramPaymentChargeId: json['telegram_payment_charge_id'] as String,
      providerPaymentChargeId: json['provider_payment_charge_id'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'currency': currency,
    'total_amount': totalAmount,
    'subscription_until_date': subscriptionUntilDate,
    'is_recurring': isRecurring,
    'is_first_recurring': isFirstRecurring,
    'invoice_payload': invoicePayload,
    'shipping_option_id': shippingOptionId,
    'order_info': orderInfo?.toJson(),
    'telegram_payment_charge_id': telegramPaymentChargeId,
    'provider_payment_charge_id': providerPaymentChargeId,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
