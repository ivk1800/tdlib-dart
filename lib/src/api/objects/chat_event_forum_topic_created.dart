import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A new forum topic was created
@immutable
class ChatEventForumTopicCreated extends ChatEventAction {
  const ChatEventForumTopicCreated({
    required this.topicInfo,
  });

  /// [topicInfo] Information about the topic
  final ForumTopicInfo topicInfo;

  static const String constructor = 'chatEventForumTopicCreated';

  static ChatEventForumTopicCreated? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventForumTopicCreated(
      topicInfo:
          ForumTopicInfo.fromJson(json['topic_info'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'topic_info': topicInfo.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
