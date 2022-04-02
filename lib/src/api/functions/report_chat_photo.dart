import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Reports a chat photo to the Telegram moderators. A chat photo can be
/// reported only if chat.can_be_reported
/// Returns [Ok]
class ReportChatPhoto extends TdFunction {
  ReportChatPhoto(
      {required this.chatId,
      required this.fileId,
      required this.reason,
      required this.text});

  /// [chatId] Chat identifier
  final int chatId;

  /// [fileId] Identifier of the photo to report. Only full photos from
  /// chatPhoto can be reported
  final int fileId;

  /// [reason] The reason for reporting the chat photo
  final ChatReportReason reason;

  /// [text] Additional report details; 0-1024 characters
  final String text;

  static const String CONSTRUCTOR = 'reportChatPhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'file_id': this.fileId,
        'reason': this.reason.toJson(),
        'text': this.text,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
