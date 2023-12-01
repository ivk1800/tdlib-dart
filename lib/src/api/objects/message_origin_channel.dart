import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The message was originally a post in a channel
@immutable
class MessageOriginChannel extends MessageOrigin {
  const MessageOriginChannel({
    required this.chatId,
    required this.messageId,
    required this.authorSignature,
  });

  /// [chatId] Identifier of the channel chat to which the message was
  /// originally sent
  final int chatId;

  /// [messageId] Message identifier of the original message
  final int messageId;

  /// [authorSignature] Original post author signature
  final String authorSignature;

  static const String constructor = 'messageOriginChannel';

  static MessageOriginChannel? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageOriginChannel(
      chatId: json['chat_id'] as int,
      messageId: json['message_id'] as int,
      authorSignature: json['author_signature'] as String,
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
