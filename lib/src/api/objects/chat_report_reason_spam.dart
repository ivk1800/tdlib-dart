import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

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

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
