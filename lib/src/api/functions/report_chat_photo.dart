import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Reports a chat photo to the Telegram moderators. A chat photo can be
/// reported only if chat.can_be_reported
/// Returns [Ok]
@immutable
class ReportChatPhoto extends TdFunction {
  const ReportChatPhoto({
    required this.chatId,
    required this.fileId,
    required this.reason,
    required this.text,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [fileId] Identifier of the photo to report. Only full photos from
  /// chatPhoto can be reported
  final int fileId;

  /// [reason] The reason for reporting the chat photo
  final ChatReportReason reason;

  /// [text] Additional report details; 0-1024 characters
  final String text;

  static const String constructor = 'reportChatPhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'file_id': fileId,
        'reason': reason.toJson(),
        'text': text,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
