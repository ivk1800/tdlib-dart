import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Some tasks from a checklist were marked as done or not done
@immutable
class MessageChecklistTasksDone extends MessageContent {
  const MessageChecklistTasksDone({
    required this.checklistMessageId,
    required this.markedAsDoneTaskIds,
    required this.markedAsNotDoneTaskIds,
  });

  /// [checklistMessageId] Identifier of the message with the checklist; can be
  /// 0 if the message was deleted
  final int checklistMessageId;

  /// [markedAsDoneTaskIds] Identifiers of tasks that were marked as done
  final List<int> markedAsDoneTaskIds;

  /// [markedAsNotDoneTaskIds] Identifiers of tasks that were marked as not done
  final List<int> markedAsNotDoneTaskIds;

  static const String constructor = 'messageChecklistTasksDone';

  static MessageChecklistTasksDone? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChecklistTasksDone(
      checklistMessageId: json['checklist_message_id'] as int,
      markedAsDoneTaskIds: List<int>.from(
        ((json['marked_as_done_task_ids'] as List<dynamic>?) ?? <dynamic>[])
            .map((item) => item)
            .toList(),
      ),
      markedAsNotDoneTaskIds: List<int>.from(
        ((json['marked_as_not_done_task_ids'] as List<dynamic>?) ?? <dynamic>[])
            .map((item) => item)
            .toList(),
      ),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'checklist_message_id': checklistMessageId,
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
