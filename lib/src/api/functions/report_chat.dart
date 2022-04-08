import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Reports a chat to the Telegram moderators. A chat can be reported only
/// from the chat action bar, or if chat.can_be_reported
/// Returns [Ok]
@immutable
class ReportChat extends TdFunction {
  const ReportChat({
    required this.chatId,
    required this.messageIds,
    required this.reason,
    required this.text,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageIds] Identifiers of reported messages, if any
  final List<int> messageIds;

  /// [reason] The reason for reporting the chat
  final ChatReportReason reason;

  /// [text] Additional report details; 0-1024 characters
  final String text;

  static const String constructor = 'reportChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_ids': messageIds.map((item) => item).toList(),
        'reason': reason.toJson(),
        'text': text,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
