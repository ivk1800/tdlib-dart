import '../tdapi.dart';

/// Contains information about a link to a message in a chat
class MessageLinkInfo extends TdObject {
  MessageLinkInfo(
      {required this.isPublic,
      required this.chatId,
      this.message,
      required this.mediaTimestamp,
      required this.forAlbum,
      required this.forComment});

  /// [isPublic] True, if the link is a public link for a message in a chat
  final bool isPublic;

  /// [chatId] If found, identifier of the chat to which the message belongs, 0
  /// otherwise
  final int chatId;

  /// [message] If found, the linked message; may be null
  final Message? message;

  /// [mediaTimestamp] Timestamp from which the video/audio/video note/voice
  /// note playing must start, in seconds; 0 if not specified. The media can be
  /// in the message content or in its web page preview
  final int mediaTimestamp;

  /// [forAlbum] True, if the whole media album to which the message belongs is
  /// linked
  final bool forAlbum;

  /// [forComment] True, if the message is linked as a channel post comment or
  /// from a message thread
  final bool forComment;

  static const String CONSTRUCTOR = 'messageLinkInfo';

  static MessageLinkInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageLinkInfo(
        isPublic: json['is_public'],
        chatId: json['chat_id'],
        message: Message.fromJson(json['message']),
        mediaTimestamp: json['media_timestamp'],
        forAlbum: json['for_album'],
        forComment: json['for_comment']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'is_public': this.isPublic,
        'chat_id': this.chatId,
        'message': this.message?.toJson(),
        'media_timestamp': this.mediaTimestamp,
        'for_album': this.forAlbum,
        'for_comment': this.forComment,
        '@type': CONSTRUCTOR
      };
}
