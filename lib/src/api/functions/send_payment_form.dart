import '../tdapi.dart';

/// Sends a filled-out payment form to the bot for final verification
/// Returns [PaymentResult]
class SendPaymentForm extends TdFunction {
  SendPaymentForm(
      {required this.chatId,
      required this.messageId,
      required this.orderInfoId,
      required this.shippingOptionId,
      required this.credentials});

  /// [chatId] Chat identifier of the Invoice message
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [orderInfoId] Identifier returned by ValidateOrderInfo, or an empty string
  ///
  final String orderInfoId;

  /// [shippingOptionId] Identifier of a chosen shipping option, if applicable
  final String shippingOptionId;

  /// [credentials] The credentials chosen by user for payment
  final InputCredentials credentials;

  static const String CONSTRUCTOR = 'sendPaymentForm';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        'order_info_id': this.orderInfoId,
        'shipping_option_id': this.shippingOptionId,
        'credentials': this.credentials.toJson(),
        '@type': CONSTRUCTOR
      };
}
