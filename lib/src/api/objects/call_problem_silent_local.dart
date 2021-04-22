import '../tdapi.dart';

/// The user couldn't hear the other side
class CallProblemSilentLocal extends CallProblem {
  const CallProblemSilentLocal();

  static const String CONSTRUCTOR = 'callProblemSilentLocal';

  static CallProblemSilentLocal? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallProblemSilentLocal();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
