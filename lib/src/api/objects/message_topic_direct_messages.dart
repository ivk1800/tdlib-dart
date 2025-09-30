import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A topic in a channel direct messages chat administered by the current user
@immutable
class MessageTopicDirectMessages extends MessageTopic {
  const MessageTopicDirectMessages({required this.directMessagesChatTopicId});

  /// [directMessagesChatTopicId] Unique identifier of the topic
  final int directMessagesChatTopicId;

  static const String constructor = 'messageTopicDirectMessages';

  static MessageTopicDirectMessages? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageTopicDirectMessages(
      directMessagesChatTopicId: json['direct_messages_chat_topic_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'direct_messages_chat_topic_id': directMessagesChatTopicId,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
