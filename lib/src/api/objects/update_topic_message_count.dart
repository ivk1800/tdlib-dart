import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Number of messages in a topic has changed; for Saved Messages and channel
/// direct messages chat topics only
@immutable
class UpdateTopicMessageCount extends Update {
  const UpdateTopicMessageCount({
    required this.chatId,
    required this.topicId,
    required this.messageCount,
  });

  /// [chatId] Identifier of the chat in topic of which the number of messages
  /// has changed
  final int chatId;

  /// [topicId] Identifier of the topic
  final MessageTopic topicId;

  /// [messageCount] Approximate number of messages in the topics
  final int messageCount;

  static const String constructor = 'updateTopicMessageCount';

  static UpdateTopicMessageCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateTopicMessageCount(
      chatId: json['chat_id'] as int,
      topicId: MessageTopic.fromJson(
        json['topic_id'] as Map<String, dynamic>?,
      )!,
      messageCount: json['message_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'topic_id': topicId.toJson(),
    'message_count': messageCount,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
