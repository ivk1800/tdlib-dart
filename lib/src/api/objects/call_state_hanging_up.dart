import '../tdapi.dart';

/// The call is hanging up after discardCall has been called
class CallStateHangingUp extends CallState {
  const CallStateHangingUp();

  static const String CONSTRUCTOR = 'callStateHangingUp';

  static CallStateHangingUp? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallStateHangingUp();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
