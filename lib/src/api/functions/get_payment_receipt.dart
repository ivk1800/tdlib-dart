import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns information about a successful payment
/// Returns [PaymentReceipt]
class GetPaymentReceipt extends TdFunction {
  GetPaymentReceipt({required this.chatId, required this.messageId});

  /// [chatId] Chat identifier of the PaymentSuccessful message
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  static const String CONSTRUCTOR = 'getPaymentReceipt';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
