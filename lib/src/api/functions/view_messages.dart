import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Informs TDLib that messages are being viewed by the user. Sponsored
/// messages must be marked as viewed only when the entire text of the message
/// is shown on the screen (excluding the button). Many useful activities
/// depend on whether the messages are currently being viewed or not (e.g.,
/// marking messages as read, incrementing a view counter, updating a view
/// counter, removing deleted messages in supergroups and channels)
/// Returns [Ok]
@immutable
class ViewMessages extends TdFunction {
  const ViewMessages({
    required this.chatId,
    required this.messageThreadId,
    required this.messageIds,
    required this.forceRead,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageThreadId] If not 0, a message thread identifier in which the
  /// messages are being viewed
  final int messageThreadId;

  /// [messageIds] The identifiers of the messages being viewed
  final List<int> messageIds;

  /// [forceRead] Pass true to mark as read the specified messages even the chat
  /// is closed
  final bool forceRead;

  static const String constructor = 'viewMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_thread_id': messageThreadId,
        'message_ids': messageIds.map((item) => item).toList(),
        'force_read': forceRead,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
