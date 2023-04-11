import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A forum topic was deleted
@immutable
class ChatEventForumTopicDeleted extends ChatEventAction {
  const ChatEventForumTopicDeleted({
    required this.topicInfo,
  });

  /// [topicInfo] Information about the topic
  final ForumTopicInfo topicInfo;

  static const String constructor = 'chatEventForumTopicDeleted';

  static ChatEventForumTopicDeleted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventForumTopicDeleted(
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
