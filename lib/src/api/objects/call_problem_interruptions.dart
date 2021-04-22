import '../tdapi.dart';

/// The other side kept disappearing
class CallProblemInterruptions extends CallProblem {
  const CallProblemInterruptions();

  static const String CONSTRUCTOR = 'callProblemInterruptions';

  static CallProblemInterruptions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallProblemInterruptions();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
