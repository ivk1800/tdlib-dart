import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Removes a pinned message from a chat; requires can_pin_messages member
/// right if the chat is a basic group or supergroup, or can_edit_messages
/// administrator right if the chat is a channel
/// Returns [Ok]
@immutable
class UnpinChatMessage extends TdFunction {
  const UnpinChatMessage({
    required this.chatId,
    required this.messageId,
  });

  /// [chatId] Identifier of the chat
  final int chatId;

  /// [messageId] Identifier of the removed pinned message
  final int messageId;

  static const String constructor = 'unpinChatMessage';

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
