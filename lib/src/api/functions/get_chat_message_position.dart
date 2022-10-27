import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns approximate 1-based position of a message among messages, which
/// can be found by the specified filter in the chat. Cannot be used in secret
/// chats
/// Returns [Count]
@immutable
class GetChatMessagePosition extends TdFunction {
  const GetChatMessagePosition({
    required this.chatId,
    required this.messageId,
    required this.filter,
    required this.messageThreadId,
  });

  /// [chatId] Identifier of the chat in which to find message position
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [filter] Filter for message content; searchMessagesFilterEmpty,
  /// searchMessagesFilterUnreadMention, searchMessagesFilterUnreadReaction, and
  /// searchMessagesFilterFailedToSend are unsupported in this function
  final SearchMessagesFilter filter;

  /// [messageThreadId] If not 0, only messages in the specified thread will be
  /// considered; supergroups only
  final int messageThreadId;

  static const String constructor = 'getChatMessagePosition';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'filter': filter.toJson(),
        'message_thread_id': messageThreadId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
