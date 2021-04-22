import '../tdapi.dart';

/// Returns an invoice payment form. This method should be called when the
/// user presses inlineKeyboardButtonBuy
/// Returns [PaymentForm]
class GetPaymentForm extends TdFunction {
  GetPaymentForm({required this.chatId, required this.messageId});

  /// [chatId] Chat identifier of the Invoice message
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  static const String CONSTRUCTOR = 'getPaymentForm';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        '@type': CONSTRUCTOR
      };
}
