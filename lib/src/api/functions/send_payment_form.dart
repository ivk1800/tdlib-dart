import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sends a filled-out payment form to the bot for final verification
/// Returns [PaymentResult]
@immutable
class SendPaymentForm extends TdFunction {
  const SendPaymentForm({
    required this.chatId,
    required this.messageId,
    required this.paymentFormId,
    required this.orderInfoId,
    required this.shippingOptionId,
    required this.credentials,
    required this.tipAmount,
  });

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

  static const String constructor = 'sendPaymentForm';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'payment_form_id': paymentFormId,
        'order_info_id': orderInfoId,
        'shipping_option_id': shippingOptionId,
        'credentials': credentials.toJson(),
        'tip_amount': tipAmount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
