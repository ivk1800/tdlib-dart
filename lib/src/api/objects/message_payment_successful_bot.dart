import '../tdapi.dart';

/// A payment has been completed; for bots only
class MessagePaymentSuccessfulBot extends MessageContent {
  MessagePaymentSuccessfulBot(
      {required this.invoiceMessageId,
      required this.currency,
      required this.totalAmount,
      required this.invoicePayload,
      required this.shippingOptionId,
      this.orderInfo,
      required this.telegramPaymentChargeId,
      required this.providerPaymentChargeId});

  /// [invoiceMessageId] Identifier of the message with the corresponding
  /// invoice; can be an identifier of a deleted message
  final int invoiceMessageId;

  /// [currency] Currency for price of the product
  final String currency;

  /// [totalAmount] Total price for the product, in the minimal quantity of the
  /// currency
  final int totalAmount;

  /// [invoicePayload] Invoice payload
  final String invoicePayload;

  /// [shippingOptionId] Identifier of the shipping option chosen by the user;
  /// may be empty if not applicable
  final String shippingOptionId;

  /// [orderInfo] Information about the order; may be null
  final OrderInfo? orderInfo;

  /// [telegramPaymentChargeId] Telegram payment identifier
  final String telegramPaymentChargeId;

  /// [providerPaymentChargeId] Provider payment identifier
  final String providerPaymentChargeId;

  static const String CONSTRUCTOR = 'messagePaymentSuccessfulBot';

  static MessagePaymentSuccessfulBot? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePaymentSuccessfulBot(
        invoiceMessageId: json['invoice_message_id'],
        currency: json['currency'],
        totalAmount: json['total_amount'],
        invoicePayload: json['invoice_payload'],
        shippingOptionId: json['shipping_option_id'],
        orderInfo: OrderInfo.fromJson(json['order_info']),
        telegramPaymentChargeId: json['telegram_payment_charge_id'],
        providerPaymentChargeId: json['provider_payment_charge_id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'invoice_message_id': this.invoiceMessageId,
        'currency': this.currency,
        'total_amount': this.totalAmount,
        'invoice_payload': this.invoicePayload,
        'shipping_option_id': this.shippingOptionId,
        'order_info': this.orderInfo?.toJson(),
        'telegram_payment_charge_id': this.telegramPaymentChargeId,
        'provider_payment_charge_id': this.providerPaymentChargeId,
        '@type': CONSTRUCTOR
      };
}
