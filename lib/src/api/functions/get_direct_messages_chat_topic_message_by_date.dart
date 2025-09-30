import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns the last message sent in the topic in a channel direct messages
/// chat administered by the current user no later than the specified date
/// Returns [Message]
@immutable
class GetDirectMessagesChatTopicMessageByDate extends TdFunction {
  const GetDirectMessagesChatTopicMessageByDate({
    required this.chatId,
    required this.topicId,
    required this.date,
  });

  /// [chatId] Chat identifier of the channel direct messages chat
  final int chatId;

  /// [topicId] Identifier of the topic which messages will be fetched
  final int topicId;

  /// [date] Point in time (Unix timestamp) relative to which to search for
  /// messages
  final int date;

  static const String constructor = 'getDirectMessagesChatTopicMessageByDate';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'topic_id': topicId,
    'date': date,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
