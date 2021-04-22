import '../tdapi.dart';

/// Reports a chat photo to the Telegram moderators. A chat photo can be
/// reported only if this is a private chat with a bot, a private chat with a
/// user sharing their location, a supergroup, or a channel, since other chats
/// can't be checked by moderators
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
}
