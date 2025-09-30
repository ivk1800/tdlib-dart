import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a checklist to be sent
@immutable
class InputChecklist extends TdObject {
  const InputChecklist({
    required this.title,
    required this.tasks,
    required this.othersCanAddTasks,
    required this.othersCanMarkTasksAsDone,
  });

  /// [title] Title of the checklist; 1-getOption("checklist_title_length_max")
  /// characters. May contain only Bold, Italic, Underline, Strikethrough,
  /// Spoiler, and CustomEmoji entities
  final FormattedText title;

  /// [tasks] List of tasks in the checklist;
  /// 1-getOption("checklist_task_count_max") tasks
  final List<InputChecklistTask> tasks;

  /// [othersCanAddTasks] True, if other users can add tasks to the list
  final bool othersCanAddTasks;

  /// [othersCanMarkTasksAsDone] True, if other users can mark tasks as done or
  /// not done
  final bool othersCanMarkTasksAsDone;

  static const String constructor = 'inputChecklist';

  static InputChecklist? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputChecklist(
      title: FormattedText.fromJson(json['title'] as Map<String, dynamic>?)!,
      tasks: List<InputChecklistTask>.from(
        ((json['tasks'] as List<dynamic>?) ?? <dynamic>[])
            .map((item) => InputChecklistTask.fromJson(item))
            .toList(),
      ),
      othersCanAddTasks: json['others_can_add_tasks'] as bool,
      othersCanMarkTasksAsDone: json['others_can_mark_tasks_as_done'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'title': title.toJson(),
    'tasks': tasks.map((item) => item.toJson()).toList(),
    'others_can_add_tasks': othersCanAddTasks,
    'others_can_mark_tasks_as_done': othersCanMarkTasksAsDone,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
