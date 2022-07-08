import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An invoice from a message of the type messageInvoice
@immutable
class InputInvoiceMessage extends InputInvoice {
  const InputInvoiceMessage({
    required this.chatId,
    required this.messageId,
  });

  /// [chatId] Chat identifier of the message
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  static const String constructor = 'inputInvoiceMessage';

  static InputInvoiceMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputInvoiceMessage(
      chatId: json['chat_id'],
      messageId: json['message_id'],
    );
  }

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
