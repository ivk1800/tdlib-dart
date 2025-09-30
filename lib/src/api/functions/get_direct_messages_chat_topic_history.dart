import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns messages in the topic in a channel direct messages chat
/// administered by the current user. The messages are returned in reverse
/// chronological order (i.e., in order of decreasing message_id)
/// Returns [Messages]
@immutable
class GetDirectMessagesChatTopicHistory extends TdFunction {
  const GetDirectMessagesChatTopicHistory({
    required this.chatId,
    required this.topicId,
    required this.fromMessageId,
    required this.offset,
    required this.limit,
  });

  /// [chatId] Chat identifier of the channel direct messages chat
  final int chatId;

  /// [topicId] Identifier of the topic which messages will be fetched
  final int topicId;

  /// [fromMessageId] Identifier of the message starting from which messages
  /// must be fetched; use 0 to get results from the last message
  final int fromMessageId;

  /// [offset] Specify 0 to get results from exactly the message from_message_id
  /// or a negative offset up to 99 to get additionally some newer messages
  final int offset;

  /// [limit] The maximum number of messages to be returned; must be positive
  /// and can't be greater than 100. If the offset is negative, the limit must
  /// be greater than or equal to -offset. For optimal performance, the number
  /// of returned messages is chosen by TDLib and can be smaller than the
  /// specified limit
  final int limit;

  static const String constructor = 'getDirectMessagesChatTopicHistory';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'topic_id': topicId,
    'from_message_id': fromMessageId,
    'offset': offset,
    'limit': limit,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
