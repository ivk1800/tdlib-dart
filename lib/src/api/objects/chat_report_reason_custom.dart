import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

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

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
