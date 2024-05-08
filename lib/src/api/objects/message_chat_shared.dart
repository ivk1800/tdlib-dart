import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The current user shared a chat, which was requested by the bot
@immutable
class MessageChatShared extends MessageContent {
  const MessageChatShared({
    required this.chat,
    required this.buttonId,
  });

  /// [chat] The shared chat
  final SharedChat chat;

  /// [buttonId] Identifier of the keyboard button with the request
  final int buttonId;

  static const String constructor = 'messageChatShared';

  static MessageChatShared? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChatShared(
      chat: SharedChat.fromJson(json['chat'] as Map<String, dynamic>?)!,
      buttonId: json['button_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat': chat.toJson(),
        'button_id': buttonId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
