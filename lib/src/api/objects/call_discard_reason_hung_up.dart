import '../tdapi.dart';

/// The call was ended because one of the parties hung up
class CallDiscardReasonHungUp extends CallDiscardReason {
  const CallDiscardReasonHungUp();

  static const String CONSTRUCTOR = 'callDiscardReasonHungUp';

  static CallDiscardReasonHungUp? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallDiscardReasonHungUp();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
