import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Reports a chat to the Telegram moderators. A chat can be reported only
/// from the chat action bar, or if chat.can_be_reported
/// Returns [ReportChatResult]
@immutable
class ReportChat extends TdFunction {
  const ReportChat({
    required this.chatId,
    required this.optionId,
    required this.messageIds,
    required this.text,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [optionId] Option identifier chosen by the user; leave empty for the
  /// initial request
  final String optionId;

  /// [messageIds] Identifiers of reported messages. Use
  /// messageProperties.can_report_chat to check whether the message can be
  /// reported
  final List<int> messageIds;

  /// [text] Additional report details if asked by the server; 0-1024
  /// characters; leave empty for the initial request
  final String text;

  static const String constructor = 'reportChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'option_id': optionId,
        'message_ids': messageIds.map((item) => item).toList(),
        'text': text,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
