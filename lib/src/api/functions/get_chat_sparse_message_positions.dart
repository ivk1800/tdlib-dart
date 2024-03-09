import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns sparse positions of messages of the specified type in the chat to
/// be used for shared media scroll implementation. Returns the results in
/// reverse chronological order (i.e., in order of decreasing message_id).
/// Cannot be used in secret chats or with searchMessagesFilterFailedToSend
/// filter without an enabled message database
/// Returns [MessagePositions]
@immutable
class GetChatSparseMessagePositions extends TdFunction {
  const GetChatSparseMessagePositions({
    required this.chatId,
    required this.filter,
    required this.fromMessageId,
    required this.limit,
    required this.savedMessagesTopicId,
  });

  /// [chatId] Identifier of the chat in which to return information about
  /// message positions
  final int chatId;

  /// [filter] Filter for message content. Filters searchMessagesFilterEmpty,
  /// searchMessagesFilterMention, searchMessagesFilterUnreadMention, and
  /// searchMessagesFilterUnreadReaction are unsupported in this function
  final SearchMessagesFilter filter;

  /// [fromMessageId] The message identifier from which to return information
  /// about message positions
  final int fromMessageId;

  /// [limit] The expected number of message positions to be returned; 50-2000.
  /// A smaller number of positions can be returned, if there are not enough
  /// appropriate messages
  final int limit;

  /// [savedMessagesTopicId] If not 0, only messages in the specified Saved
  /// Messages topic will be considered; pass 0 to consider all messages, or for
  /// chats other than Saved Messages
  final int savedMessagesTopicId;

  static const String constructor = 'getChatSparseMessagePositions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'filter': filter.toJson(),
        'from_message_id': fromMessageId,
        'limit': limit,
        'saved_messages_topic_id': savedMessagesTopicId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
