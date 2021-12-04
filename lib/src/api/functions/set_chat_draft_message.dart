import '../tdapi.dart';

/// Changes the draft message in a chat
/// Returns [Ok]
class SetChatDraftMessage extends TdFunction {
  SetChatDraftMessage(
      {required this.chatId, required this.messageThreadId, this.draftMessage});

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageThreadId] If not 0, a message thread identifier in which the draft
  /// was changed
  final int messageThreadId;

  /// [draftMessage] New draft message; pass null to remove the draft
  final DraftMessage? draftMessage;

  static const String CONSTRUCTOR = 'setChatDraftMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_thread_id': this.messageThreadId,
        'draft_message': this.draftMessage?.toJson(),
        '@type': CONSTRUCTOR
      };
}
