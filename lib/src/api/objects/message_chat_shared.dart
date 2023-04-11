import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The current user shared a chat, which was requested by the bot
@immutable
class MessageChatShared extends MessageContent {
  const MessageChatShared({
    required this.chatId,
    required this.buttonId,
  });

  /// [chatId] Identifier of the shared chat
  final int chatId;

  /// [buttonId] Identifier of the keyboard button with the request
  final int buttonId;

  static const String constructor = 'messageChatShared';

  static MessageChatShared? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChatShared(
      chatId: json['chat_id'] as int,
      buttonId: json['button_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'button_id': buttonId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
