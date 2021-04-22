import '../tdapi.dart';

/// Informs TDLib that messages are being viewed by the user. Many useful
/// activities depend on whether the messages are currently being viewed or
/// not (e.g., marking messages as read, incrementing a view counter, updating
/// a view counter, removing deleted messages in supergroups and channels)
/// Returns [Ok]
class ViewMessages extends TdFunction {
  ViewMessages(
      {required this.chatId,
      required this.messageThreadId,
      required this.messageIds,
      required this.forceRead});

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageThreadId] If not 0, a message thread identifier in which the
  /// messages are being viewed
  final int messageThreadId;

  /// [messageIds] The identifiers of the messages being viewed
  final List<int> messageIds;

  /// [forceRead] True, if messages in closed chats should be marked as read by
  /// the request
  final bool forceRead;

  static const String CONSTRUCTOR = 'viewMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_thread_id': this.messageThreadId,
        'message_ids': messageIds.map((item) => item).toList(),
        'force_read': this.forceRead,
        '@type': CONSTRUCTOR
      };
}
