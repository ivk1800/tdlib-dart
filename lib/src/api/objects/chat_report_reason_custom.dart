import '../tdapi.dart';

/// A custom reason provided by the user
class ChatReportReasonCustom extends ChatReportReason {
  const ChatReportReasonCustom();

  static const String CONSTRUCTOR = 'chatReportReasonCustom';

  static ChatReportReasonCustom? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatReportReasonCustom();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
