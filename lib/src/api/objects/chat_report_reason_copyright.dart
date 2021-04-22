import '../tdapi.dart';

/// The chat contains copyrighted content
class ChatReportReasonCopyright extends ChatReportReason {
  const ChatReportReasonCopyright();

  static const String CONSTRUCTOR = 'chatReportReasonCopyright';

  static ChatReportReasonCopyright? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatReportReasonCopyright();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
