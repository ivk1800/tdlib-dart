import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns information about a message thread. Can be used only if
/// message.can_get_message_thread == true
/// Returns [MessageThreadInfo]
class GetMessageThread extends TdFunction {
  GetMessageThread({required this.chatId, required this.messageId});

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  static const String CONSTRUCTOR = 'getMessageThread';

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
