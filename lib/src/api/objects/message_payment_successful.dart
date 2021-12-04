import '../tdapi.dart';

/// A payment has been completed
class MessagePaymentSuccessful extends MessageContent {
  MessagePaymentSuccessful(
      {required this.invoiceChatId,
      required this.invoiceMessageId,
      required this.currency,
      required this.totalAmount});

  /// [invoiceChatId] Identifier of the chat, containing the corresponding
  /// invoice message; 0 if unknown
  final int invoiceChatId;

  /// [invoiceMessageId] Identifier of the message with the corresponding
  /// invoice; can be an identifier of a deleted message
  final int invoiceMessageId;

  /// [currency] Currency for the price of the product
  final String currency;

  /// [totalAmount] Total price for the product, in the smallest units of the
  /// currency
  final int totalAmount;

  static const String CONSTRUCTOR = 'messagePaymentSuccessful';

  static MessagePaymentSuccessful? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePaymentSuccessful(
        invoiceChatId: json['invoice_chat_id'],
        invoiceMessageId: json['invoice_message_id'],
        currency: json['currency'],
        totalAmount: json['total_amount']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'invoice_chat_id': this.invoiceChatId,
        'invoice_message_id': this.invoiceMessageId,
        'currency': this.currency,
        'total_amount': this.totalAmount,
        '@type': CONSTRUCTOR
      };
}
