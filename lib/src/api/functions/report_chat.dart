import '../tdapi.dart';

/// Reports a chat to the Telegram moderators. A chat can be reported only
/// from the chat action bar, or if chat.can_be_reported
/// Returns [Ok]
class ReportChat extends TdFunction {
  ReportChat(
      {required this.chatId,
      required this.messageIds,
      required this.reason,
      required this.text});

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageIds] Identifiers of reported messages, if any
  final List<int> messageIds;

  /// [reason] The reason for reporting the chat
  final ChatReportReason reason;

  /// [text] Additional report details; 0-1024 characters
  final String text;

  static const String CONSTRUCTOR = 'reportChat';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_ids': messageIds.map((item) => item).toList(),
        'reason': this.reason.toJson(),
        'text': this.text,
        '@type': CONSTRUCTOR
      };
}
