import '../tdapi.dart';

/// The chat contains spam messages
class ChatReportReasonSpam extends ChatReportReason {
  const ChatReportReasonSpam();

  static const String CONSTRUCTOR = 'chatReportReasonSpam';

  static ChatReportReasonSpam? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatReportReasonSpam();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
