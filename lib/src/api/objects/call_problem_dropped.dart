import '../tdapi.dart';

/// The call ended unexpectedly
class CallProblemDropped extends CallProblem {
  const CallProblemDropped();

  static const String CONSTRUCTOR = 'callProblemDropped';

  static CallProblemDropped? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallProblemDropped();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
