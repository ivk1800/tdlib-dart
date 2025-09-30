import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Some tasks were added to a checklist
@immutable
class PushMessageContentChecklistTasksAdded extends PushMessageContent {
  const PushMessageContentChecklistTasksAdded({required this.taskCount});

  /// [taskCount] Number of added tasks
  final int taskCount;

  static const String constructor = 'pushMessageContentChecklistTasksAdded';

  static PushMessageContentChecklistTasksAdded? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return PushMessageContentChecklistTasksAdded(
      taskCount: json['task_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'task_count': taskCount,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
