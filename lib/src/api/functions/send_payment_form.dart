import '../tdapi.dart';

/// Sends a filled-out payment form to the bot for final verification
/// Returns [PaymentResult]
class SendPaymentForm extends TdFunction {
  SendPaymentForm(
      {required this.chatId,
      required this.messageId,
      required this.paymentFormId,
      required this.orderInfoId,
      required this.shippingOptionId,
      required this.credentials,
      required this.tipAmount});

  /// [chatId] Chat identifier of the Invoice message
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [paymentFormId] Payment form identifier returned by getPaymentForm
  final int paymentFormId;

  /// [orderInfoId] Identifier returned by validateOrderInfo, or an empty string
  ///
  final String orderInfoId;

  /// [shippingOptionId] Identifier of a chosen shipping option, if applicable
  final String shippingOptionId;

  /// [credentials] The credentials chosen by user for payment
  final InputCredentials credentials;

  /// [tipAmount] Chosen by the user amount of tip in the smallest units of the
  /// currency
  final int tipAmount;

  static const String CONSTRUCTOR = 'sendPaymentForm';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        'payment_form_id': this.paymentFormId,
        'order_info_id': this.orderInfoId,
        'shipping_option_id': this.shippingOptionId,
        'credentials': this.credentials.toJson(),
        'tip_amount': this.tipAmount,
        '@type': CONSTRUCTOR
      };
}
