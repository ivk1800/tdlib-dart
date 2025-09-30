import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a checklist
@immutable
class Checklist extends TdObject {
  const Checklist({
    required this.title,
    required this.tasks,
    required this.othersCanAddTasks,
    required this.canAddTasks,
    required this.othersCanMarkTasksAsDone,
    required this.canMarkTasksAsDone,
  });

  /// [title] Title of the checklist; may contain only Bold, Italic, Underline,
  /// Strikethrough, Spoiler, and CustomEmoji entities
  final FormattedText title;

  /// [tasks] List of tasks in the checklist
  final List<ChecklistTask> tasks;

  /// [othersCanAddTasks] True, if users other than creator of the list can add
  /// tasks to the list
  final bool othersCanAddTasks;

  /// [canAddTasks] True, if the current user can add tasks to the list if they
  /// have Telegram Premium subscription
  final bool canAddTasks;

  /// [othersCanMarkTasksAsDone] True, if users other than creator of the list
  /// can mark tasks as done or not done. If true, then the checklist is called
  /// "group checklist"
  final bool othersCanMarkTasksAsDone;

  /// [canMarkTasksAsDone] True, if the current user can mark tasks as done or
  /// not done if they have Telegram Premium subscription
  final bool canMarkTasksAsDone;

  static const String constructor = 'checklist';

  static Checklist? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Checklist(
      title: FormattedText.fromJson(json['title'] as Map<String, dynamic>?)!,
      tasks: List<ChecklistTask>.from(
        ((json['tasks'] as List<dynamic>?) ?? <dynamic>[])
            .map((item) => ChecklistTask.fromJson(item))
            .toList(),
      ),
      othersCanAddTasks: json['others_can_add_tasks'] as bool,
      canAddTasks: json['can_add_tasks'] as bool,
      othersCanMarkTasksAsDone: json['others_can_mark_tasks_as_done'] as bool,
      canMarkTasksAsDone: json['can_mark_tasks_as_done'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'title': title.toJson(),
    'tasks': tasks.map((item) => item.toJson()).toList(),
    'others_can_add_tasks': othersCanAddTasks,
    'can_add_tasks': canAddTasks,
    'others_can_mark_tasks_as_done': othersCanMarkTasksAsDone,
    'can_mark_tasks_as_done': canMarkTasksAsDone,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
