import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The message was sent on behalf of a chat
@immutable
class MessageSenderChat extends MessageSender {
  const MessageSenderChat({
    required this.chatId,
  });

  /// [chatId] Identifier of the chat that sent the message
  final int chatId;

  static const String constructor = 'messageSenderChat';

  static MessageSenderChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSenderChat(
      chatId: json['chat_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
