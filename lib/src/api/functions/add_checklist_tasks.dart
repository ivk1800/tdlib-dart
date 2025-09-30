import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Adds tasks to a checklist in a message
/// Returns [Ok]
@immutable
class AddChecklistTasks extends TdFunction {
  const AddChecklistTasks({
    required this.chatId,
    required this.messageId,
    required this.tasks,
  });

  /// [chatId] Identifier of the chat with the message
  final int chatId;

  /// [messageId] Identifier of the message containing the checklist. Use
  /// messageProperties.can_add_tasks to check whether the tasks can be added
  final int messageId;

  /// [tasks] List of added tasks
  final List<InputChecklistTask> tasks;

  static const String constructor = 'addChecklistTasks';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'message_id': messageId,
    'tasks': tasks.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
