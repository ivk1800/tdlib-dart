import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the order of pinned forum topics; requires can_manage_topics right
/// in the supergroup
/// Returns [Ok]
@immutable
class SetPinnedForumTopics extends TdFunction {
  const SetPinnedForumTopics({
    required this.chatId,
    required this.messageThreadIds,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageThreadIds] The new list of pinned forum topics
  final List<int> messageThreadIds;

  static const String constructor = 'setPinnedForumTopics';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_thread_ids': messageThreadIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
