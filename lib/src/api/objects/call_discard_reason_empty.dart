import '../tdapi.dart';

/// The call wasn't discarded, or the reason is unknown
class CallDiscardReasonEmpty extends CallDiscardReason {
  const CallDiscardReasonEmpty();

  static const String CONSTRUCTOR = 'callDiscardReasonEmpty';

  static CallDiscardReasonEmpty? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallDiscardReasonEmpty();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
