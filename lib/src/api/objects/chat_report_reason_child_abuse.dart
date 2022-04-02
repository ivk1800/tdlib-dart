import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The chat has child abuse related content
class ChatReportReasonChildAbuse extends ChatReportReason {
  const ChatReportReasonChildAbuse();

  static const String CONSTRUCTOR = 'chatReportReasonChildAbuse';

  static ChatReportReasonChildAbuse? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatReportReasonChildAbuse();
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
