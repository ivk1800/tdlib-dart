import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns information about a successful payment
/// Returns [PaymentReceipt]
@immutable
class GetPaymentReceipt extends TdFunction {
  const GetPaymentReceipt({
    required this.chatId,
    required this.messageId,
  });

  /// [chatId] Chat identifier of the messagePaymentSuccessful message
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  static const String constructor = 'getPaymentReceipt';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
