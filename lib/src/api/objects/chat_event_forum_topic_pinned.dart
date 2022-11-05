import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A pinned forum topic was changed
@immutable
class ChatEventForumTopicPinned extends ChatEventAction {
  const ChatEventForumTopicPinned({
    this.oldTopicInfo,
    this.newTopicInfo,
  });

  /// [oldTopicInfo] Information about the old pinned topic; may be null
  final ForumTopicInfo? oldTopicInfo;

  /// [newTopicInfo] Information about the new pinned topic; may be null
  final ForumTopicInfo? newTopicInfo;

  static const String constructor = 'chatEventForumTopicPinned';

  static ChatEventForumTopicPinned? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventForumTopicPinned(
      oldTopicInfo: ForumTopicInfo.fromJson(json['old_topic_info']),
      newTopicInfo: ForumTopicInfo.fromJson(json['new_topic_info']),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'old_topic_info': oldTopicInfo?.toJson(),
        'new_topic_info': newTopicInfo?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
