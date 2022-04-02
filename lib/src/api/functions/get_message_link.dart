import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns an HTTPS link to a message in a chat. Available only for already
/// sent messages in supergroups and channels, or if
/// message.can_get_media_timestamp_links and a media timestamp link is
/// generated. This is an offline request
/// Returns [MessageLink]
class GetMessageLink extends TdFunction {
  GetMessageLink(
      {required this.chatId,
      required this.messageId,
      required this.mediaTimestamp,
      required this.forAlbum,
      required this.forComment});

  /// [chatId] Identifier of the chat to which the message belongs
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [mediaTimestamp] If not 0, timestamp from which the video/audio/video
  /// note/voice note playing must start, in seconds. The media can be in the
  /// message content or in its web page preview
  final int mediaTimestamp;

  /// [forAlbum] Pass true to create a link for the whole media album
  final bool forAlbum;

  /// [forComment] Pass true to create a link to the message as a channel post
  /// comment, or from a message thread
  final bool forComment;

  static const String CONSTRUCTOR = 'getMessageLink';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        'media_timestamp': this.mediaTimestamp,
        'for_album': this.forAlbum,
        'for_comment': this.forComment,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
