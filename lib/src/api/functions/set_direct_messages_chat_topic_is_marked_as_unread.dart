import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the marked as unread state of the topic in a channel direct
/// messages chat administered by the current user
/// Returns [Ok]
@immutable
class SetDirectMessagesChatTopicIsMarkedAsUnread extends TdFunction {
  const SetDirectMessagesChatTopicIsMarkedAsUnread({
    required this.chatId,
    required this.topicId,
    required this.isMarkedAsUnread,
  });

  /// [chatId] Chat identifier of the channel direct messages chat
  final int chatId;

  /// [topicId] Topic identifier
  final int topicId;

  /// [isMarkedAsUnread] New value of is_marked_as_unread
  final bool isMarkedAsUnread;

  static const String constructor =
      'setDirectMessagesChatTopicIsMarkedAsUnread';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'topic_id': topicId,
    'is_marked_as_unread': isMarkedAsUnread,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
