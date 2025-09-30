import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Deletes all messages between the specified dates in the topic in a channel
/// direct messages chat administered by the current user. Messages sent in
/// the last 30 seconds will not be deleted
/// Returns [Ok]
@immutable
class DeleteDirectMessagesChatTopicMessagesByDate extends TdFunction {
  const DeleteDirectMessagesChatTopicMessagesByDate({
    required this.chatId,
    required this.topicId,
    required this.minDate,
    required this.maxDate,
  });

  /// [chatId] Chat identifier of the channel direct messages chat
  final int chatId;

  /// [topicId] Identifier of the topic which messages will be deleted
  final int topicId;

  /// [minDate] The minimum date of the messages to delete
  final int minDate;

  /// [maxDate] The maximum date of the messages to delete
  final int maxDate;

  static const String constructor =
      'deleteDirectMessagesChatTopicMessagesByDate';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'topic_id': topicId,
    'min_date': minDate,
    'max_date': maxDate,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
