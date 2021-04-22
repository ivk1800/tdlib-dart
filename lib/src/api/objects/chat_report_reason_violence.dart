import '../tdapi.dart';

/// The chat promotes violence
class ChatReportReasonViolence extends ChatReportReason {
  const ChatReportReasonViolence();

  static const String CONSTRUCTOR = 'chatReportReasonViolence';

  static ChatReportReasonViolence? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatReportReasonViolence();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
