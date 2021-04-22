import '../tdapi.dart';

/// The chat is a location-based supergroup, which can be reported as having
/// unrelated location using the method reportChat with the reason
/// chatReportReasonUnrelatedLocation
class ChatActionBarReportUnrelatedLocation extends ChatActionBar {
  const ChatActionBarReportUnrelatedLocation();

  static const String CONSTRUCTOR = 'chatActionBarReportUnrelatedLocation';

  static ChatActionBarReportUnrelatedLocation? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatActionBarReportUnrelatedLocation();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
