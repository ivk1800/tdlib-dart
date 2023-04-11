import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A forum topic was edited
@immutable
class ChatEventForumTopicEdited extends ChatEventAction {
  const ChatEventForumTopicEdited({
    required this.oldTopicInfo,
    required this.newTopicInfo,
  });

  /// [oldTopicInfo] Old information about the topic
  final ForumTopicInfo oldTopicInfo;

  /// [newTopicInfo] New information about the topic
  final ForumTopicInfo newTopicInfo;

  static const String constructor = 'chatEventForumTopicEdited';

  static ChatEventForumTopicEdited? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventForumTopicEdited(
      oldTopicInfo: ForumTopicInfo.fromJson(
          json['old_topic_info'] as Map<String, dynamic>?)!,
      newTopicInfo: ForumTopicInfo.fromJson(
          json['new_topic_info'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'old_topic_info': oldTopicInfo.toJson(),
        'new_topic_info': newTopicInfo.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
