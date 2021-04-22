import '../tdapi.dart';

/// The chat contains pornographic messages
class ChatReportReasonPornography extends ChatReportReason {
  const ChatReportReasonPornography();

  static const String CONSTRUCTOR = 'chatReportReasonPornography';

  static ChatReportReasonPornography? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatReportReasonPornography();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
