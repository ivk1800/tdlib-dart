import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Some tasks from a checklist were marked as done or not done
@immutable
class PushMessageContentChecklistTasksDone extends PushMessageContent {
  const PushMessageContentChecklistTasksDone({required this.taskCount});

  /// [taskCount] Number of changed tasks
  final int taskCount;

  static const String constructor = 'pushMessageContentChecklistTasksDone';

  static PushMessageContentChecklistTasksDone? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return PushMessageContentChecklistTasksDone(
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
