import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The General forum topic was hidden or unhidden
@immutable
class ChatEventForumTopicToggleIsHidden extends ChatEventAction {
  const ChatEventForumTopicToggleIsHidden({
    required this.topicInfo,
  });

  /// [topicInfo] New information about the topic
  final ForumTopicInfo topicInfo;

  static const String constructor = 'chatEventForumTopicToggleIsHidden';

  static ChatEventForumTopicToggleIsHidden? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventForumTopicToggleIsHidden(
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
