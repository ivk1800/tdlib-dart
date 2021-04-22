import '../tdapi.dart';

/// The chat represents a fake account
class ChatReportReasonFake extends ChatReportReason {
  const ChatReportReasonFake();

  static const String CONSTRUCTOR = 'chatReportReasonFake';

  static ChatReportReasonFake? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatReportReasonFake();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
