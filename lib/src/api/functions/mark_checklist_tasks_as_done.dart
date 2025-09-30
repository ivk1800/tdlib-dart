import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Adds tasks of a checklist in a message as done or not done
/// Returns [Ok]
@immutable
class MarkChecklistTasksAsDone extends TdFunction {
  const MarkChecklistTasksAsDone({
    required this.chatId,
    required this.messageId,
    required this.markedAsDoneTaskIds,
    required this.markedAsNotDoneTaskIds,
  });

  /// [chatId] Identifier of the chat with the message
  final int chatId;

  /// [messageId] Identifier of the message containing the checklist. Use
  /// messageProperties.can_mark_tasks_as_done to check whether the tasks can be
  /// marked as done or not done
  final int messageId;

  /// [markedAsDoneTaskIds] Identifiers of tasks that were marked as done
  final List<int> markedAsDoneTaskIds;

  /// [markedAsNotDoneTaskIds] Identifiers of tasks that were marked as not done
  final List<int> markedAsNotDoneTaskIds;

  static const String constructor = 'markChecklistTasksAsDone';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'message_id': messageId,
    'marked_as_done_task_ids': markedAsDoneTaskIds.map((item) => item).toList(),
    'marked_as_not_done_task_ids': markedAsNotDoneTaskIds
        .map((item) => item)
        .toList(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
