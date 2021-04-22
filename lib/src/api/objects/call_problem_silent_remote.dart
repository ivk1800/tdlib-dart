import '../tdapi.dart';

/// The other side couldn't hear the user
class CallProblemSilentRemote extends CallProblem {
  const CallProblemSilentRemote();

  static const String CONSTRUCTOR = 'callProblemSilentRemote';

  static CallProblemSilentRemote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallProblemSilentRemote();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
