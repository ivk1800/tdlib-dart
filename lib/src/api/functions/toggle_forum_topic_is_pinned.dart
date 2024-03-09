import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the pinned state of a forum topic; requires can_manage_topics
/// right in the supergroup. There can be up to
/// getOption("pinned_forum_topic_count_max") pinned forum topics
/// Returns [Ok]
@immutable
class ToggleForumTopicIsPinned extends TdFunction {
  const ToggleForumTopicIsPinned({
    required this.chatId,
    required this.messageThreadId,
    required this.isPinned,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageThreadId] Message thread identifier of the forum topic
  final int messageThreadId;

  /// [isPinned] Pass true to pin the topic; pass false to unpin it
  final bool isPinned;

  static const String constructor = 'toggleForumTopicIsPinned';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_thread_id': messageThreadId,
        'is_pinned': isPinned,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
