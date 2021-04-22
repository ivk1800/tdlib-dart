import '../tdapi.dart';

/// A payment has been completed
class MessagePaymentSuccessful extends MessageContent {
  MessagePaymentSuccessful(
      {required this.invoiceMessageId,
      required this.currency,
      required this.totalAmount});

  /// [invoiceMessageId] Identifier of the message with the corresponding
  /// invoice; can be an identifier of a deleted message
  final int invoiceMessageId;

  /// [currency] Currency for the price of the product
  final String currency;

  /// [totalAmount] Total price for the product, in the minimal quantity of the
  /// currency
  final int totalAmount;

  static const String CONSTRUCTOR = 'messagePaymentSuccessful';

  static MessagePaymentSuccessful? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePaymentSuccessful(
        invoiceMessageId: json['invoice_message_id'],
        currency: json['currency'],
        totalAmount: json['total_amount']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'invoice_message_id': this.invoiceMessageId,
        'currency': this.currency,
        'total_amount': this.totalAmount,
        '@type': CONSTRUCTOR
      };
}
