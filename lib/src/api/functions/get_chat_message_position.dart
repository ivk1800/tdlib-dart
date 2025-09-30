import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns approximate 1-based position of a message among messages, which
/// can be found by the specified filter in the chat and topic. Cannot be used
/// in secret chats
/// Returns [Count]
@immutable
class GetChatMessagePosition extends TdFunction {
  const GetChatMessagePosition({
    required this.chatId,
    this.topicId,
    required this.filter,
    required this.messageId,
  });

  /// [chatId] Identifier of the chat in which to find message position
  final int chatId;

  /// [topicId] Pass topic identifier to get position among messages only in
  /// specific topic; pass null to get position among all chat messages
  final MessageTopic? topicId;

  /// [filter] Filter for message content; searchMessagesFilterEmpty,
  /// searchMessagesFilterUnreadMention, searchMessagesFilterUnreadReaction, and
  /// searchMessagesFilterFailedToSend are unsupported in this function
  final SearchMessagesFilter filter;

  /// [messageId] Message identifier
  final int messageId;

  static const String constructor = 'getChatMessagePosition';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'topic_id': topicId?.toJson(),
    'filter': filter.toJson(),
    'message_id': messageId,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
