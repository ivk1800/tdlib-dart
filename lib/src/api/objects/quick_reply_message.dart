import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a message that can be used for quick reply
@immutable
class QuickReplyMessage extends TdObject {
  const QuickReplyMessage({
    required this.id,
    this.sendingState,
    required this.canBeEdited,
    required this.replyToMessageId,
    required this.viaBotUserId,
    required this.mediaAlbumId,
    required this.content,
    this.replyMarkup,
  });

  /// [id] Unique message identifier among all quick replies
  final int id;

  /// [sendingState] The sending state of the message; may be null if the
  /// message isn't being sent and didn't fail to be sent
  final MessageSendingState? sendingState;

  /// [canBeEdited] True, if the message can be edited
  final bool canBeEdited;

  /// [replyToMessageId] Information about the identifier of the quick reply
  /// message to which the message replies
  final int replyToMessageId;

  /// [viaBotUserId] If non-zero, the user identifier of the bot through which
  /// this message was sent
  final int viaBotUserId;

  /// [mediaAlbumId] Unique identifier of an album this message belongs to. Only
  /// audios, documents, photos and videos can be grouped together in albums
  final int mediaAlbumId;

  /// [content] Content of the message
  final MessageContent content;

  /// [replyMarkup] Inline keyboard reply markup for the message; may be null if
  /// none
  final ReplyMarkup? replyMarkup;

  static const String constructor = 'quickReplyMessage';

  static QuickReplyMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return QuickReplyMessage(
      id: json['id'] as int,
      sendingState: MessageSendingState.fromJson(
          json['sending_state'] as Map<String, dynamic>?),
      canBeEdited: json['can_be_edited'] as bool,
      replyToMessageId: json['reply_to_message_id'] as int,
      viaBotUserId: json['via_bot_user_id'] as int,
      mediaAlbumId: int.tryParse(json['media_album_id']) ?? 0,
      content:
          MessageContent.fromJson(json['content'] as Map<String, dynamic>?)!,
      replyMarkup:
          ReplyMarkup.fromJson(json['reply_markup'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'sending_state': sendingState?.toJson(),
        'can_be_edited': canBeEdited,
        'reply_to_message_id': replyToMessageId,
        'via_bot_user_id': viaBotUserId,
        'media_album_id': mediaAlbumId.toString(),
        'content': content.toJson(),
        'reply_markup': replyMarkup?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
