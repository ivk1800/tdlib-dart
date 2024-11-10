import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sends a filled-out payment form to the bot for final verification
/// Returns [PaymentResult]
@immutable
class SendPaymentForm extends TdFunction {
  const SendPaymentForm({
    required this.inputInvoice,
    required this.paymentFormId,
    required this.orderInfoId,
    required this.shippingOptionId,
    this.credentials,
    required this.tipAmount,
  });

  /// [inputInvoice] The invoice
  final InputInvoice inputInvoice;

  /// [paymentFormId] Payment form identifier returned by getPaymentForm
  final int paymentFormId;

  /// [orderInfoId] Identifier returned by validateOrderInfo, or an empty string
  final String orderInfoId;

  /// [shippingOptionId] Identifier of a chosen shipping option, if applicable
  final String shippingOptionId;

  /// [credentials] The credentials chosen by user for payment; pass null for a
  /// payment in Telegram Stars
  final InputCredentials? credentials;

  /// [tipAmount] Chosen by the user amount of tip in the smallest units of the
  /// currency
  final int tipAmount;

  static const String constructor = 'sendPaymentForm';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'input_invoice': inputInvoice.toJson(),
        'payment_form_id': paymentFormId,
        'order_info_id': orderInfoId,
        'shipping_option_id': shippingOptionId,
        'credentials': credentials?.toJson(),
        'tip_amount': tipAmount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
