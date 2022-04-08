import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The message was originally a post in a channel
@immutable
class MessageForwardOriginChannel extends MessageForwardOrigin {
  const MessageForwardOriginChannel({
    required this.chatId,
    required this.messageId,
    required this.authorSignature,
  });

  /// [chatId] Identifier of the chat from which the message was originally
  /// forwarded
  final int chatId;

  /// [messageId] Message identifier of the original message
  final int messageId;

  /// [authorSignature] Original post author signature
  final String authorSignature;

  static const String constructor = 'messageForwardOriginChannel';

  static MessageForwardOriginChannel? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageForwardOriginChannel(
      chatId: json['chat_id'],
      messageId: json['message_id'],
      authorSignature: json['author_signature'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'author_signature': authorSignature,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
