import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Toggles whether a topic is closed in a forum supergroup chat; requires
/// can_manage_topics administrator right in the supergroup unless the user is
/// creator of the topic
/// Returns [Ok]
@immutable
class ToggleForumTopicIsClosed extends TdFunction {
  const ToggleForumTopicIsClosed({
    required this.chatId,
    required this.messageThreadId,
    required this.isClosed,
  });

  /// [chatId] Identifier of the chat
  final int chatId;

  /// [messageThreadId] Message thread identifier of the forum topic
  final int messageThreadId;

  /// [isClosed] Pass true to close the topic; pass false to reopen it
  final bool isClosed;

  static const String constructor = 'toggleForumTopicIsClosed';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_thread_id': messageThreadId,
        'is_closed': isClosed,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
