import '../tdapi.dart';

/// The call was ended before the conversation started. It was declined by the
/// other party
class CallDiscardReasonDeclined extends CallDiscardReason {
  const CallDiscardReasonDeclined();

  static const String CONSTRUCTOR = 'callDiscardReasonDeclined';

  static CallDiscardReasonDeclined? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallDiscardReasonDeclined();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
