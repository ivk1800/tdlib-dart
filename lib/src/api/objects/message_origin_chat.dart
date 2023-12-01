import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The message was originally sent on behalf of a chat
@immutable
class MessageOriginChat extends MessageOrigin {
  const MessageOriginChat({
    required this.senderChatId,
    required this.authorSignature,
  });

  /// [senderChatId] Identifier of the chat that originally sent the message
  final int senderChatId;

  /// [authorSignature] For messages originally sent by an anonymous chat
  /// administrator, original message author signature
  final String authorSignature;

  static const String constructor = 'messageOriginChat';

  static MessageOriginChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageOriginChat(
      senderChatId: json['sender_chat_id'] as int,
      authorSignature: json['author_signature'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sender_chat_id': senderChatId,
        'author_signature': authorSignature,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
