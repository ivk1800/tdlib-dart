import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Some tasks were added to a checklist
@immutable
class MessageChecklistTasksAdded extends MessageContent {
  const MessageChecklistTasksAdded({
    required this.checklistMessageId,
    required this.tasks,
  });

  /// [checklistMessageId] Identifier of the message with the checklist; can be
  /// 0 if the message was deleted
  final int checklistMessageId;

  /// [tasks] List of tasks added to the checklist
  final List<ChecklistTask> tasks;

  static const String constructor = 'messageChecklistTasksAdded';

  static MessageChecklistTasksAdded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChecklistTasksAdded(
      checklistMessageId: json['checklist_message_id'] as int,
      tasks: List<ChecklistTask>.from(
        ((json['tasks'] as List<dynamic>?) ?? <dynamic>[])
            .map((item) => ChecklistTask.fromJson(item))
            .toList(),
      ),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'checklist_message_id': checklistMessageId,
    'tasks': tasks.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
