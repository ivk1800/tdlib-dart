import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Removes all unread reactions in the topic in a channel direct messages
/// chat administered by the current user
/// Returns [Ok]
@immutable
class ReadAllDirectMessagesChatTopicReactions extends TdFunction {
  const ReadAllDirectMessagesChatTopicReactions({
    required this.chatId,
    required this.topicId,
  });

  /// [chatId] Identifier of the chat
  final int chatId;

  /// [topicId] Topic identifier
  final int topicId;

  static const String constructor = 'readAllDirectMessagesChatTopicReactions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'topic_id': topicId,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
