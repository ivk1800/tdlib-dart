import '../tdapi.dart';

/// The call was ended before the conversation started. It was cancelled by
/// the caller or missed by the other party
class CallDiscardReasonMissed extends CallDiscardReason {
  const CallDiscardReasonMissed();

  static const String CONSTRUCTOR = 'callDiscardReasonMissed';

  static CallDiscardReasonMissed? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallDiscardReasonMissed();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
