import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a link to a message or a forum topic in a chat
@immutable
class MessageLinkInfo extends TdObject {
  const MessageLinkInfo({
    required this.isPublic,
    required this.chatId,
    required this.messageThreadId,
    required this.message,
    required this.mediaTimestamp,
    required this.forAlbum,
  });

  /// [isPublic] True, if the link is a public link for a message or a forum
  /// topic in a chat
  final bool isPublic;

  /// [chatId] If found, identifier of the chat to which the link points, 0
  /// otherwise
  final int chatId;

  /// [messageThreadId] If found, identifier of the message thread in which to
  /// open the message, or a forum topic to open if the message is missing
  final int messageThreadId;

  /// [message]_thread_id If found, identifier of the message thread in which to
  /// open the message, or a forum topic to open if the message is missing
  final Message message;

  /// [mediaTimestamp] Timestamp from which the video/audio/video note/voice
  /// note/story playing must start, in seconds; 0 if not specified. The media
  /// can be in the message content or in its web page preview
  final int mediaTimestamp;

  /// [forAlbum] True, if the whole media album to which the message belongs is
  /// linked
  final bool forAlbum;

  static const String constructor = 'messageLinkInfo';

  static MessageLinkInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageLinkInfo(
      isPublic: json['is_public'] as bool,
      chatId: json['chat_id'] as int,
      messageThreadId: json['message_thread_id'] as int,
      message: Message.fromJson(json['message'] as Map<String, dynamic>?)!,
      mediaTimestamp: json['media_timestamp'] as int,
      forAlbum: json['for_album'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_public': isPublic,
        'chat_id': chatId,
        'message_thread_id': messageThreadId,
        'message': message.toJson(),
        'media_timestamp': mediaTimestamp,
        'for_album': forAlbum,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
