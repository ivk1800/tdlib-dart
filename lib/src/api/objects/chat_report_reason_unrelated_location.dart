import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The location-based chat is unrelated to its stated location
class ChatReportReasonUnrelatedLocation extends ChatReportReason {
  const ChatReportReasonUnrelatedLocation();

  static const String CONSTRUCTOR = 'chatReportReasonUnrelatedLocation';

  static ChatReportReasonUnrelatedLocation? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatReportReasonUnrelatedLocation();
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
