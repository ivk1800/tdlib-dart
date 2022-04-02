import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

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

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
