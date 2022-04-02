import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Removes a pinned message from a chat; requires can_pin_messages rights in
/// the group or can_edit_messages rights in the channel
/// Returns [Ok]
class UnpinChatMessage extends TdFunction {
  UnpinChatMessage({required this.chatId, required this.messageId});

  /// [chatId] Identifier of the chat
  final int chatId;

  /// [messageId] Identifier of the removed pinned message
  final int messageId;

  static const String CONSTRUCTOR = 'unpinChatMessage';

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
