import '../tdapi.dart';

/// The speech was distorted
class CallProblemDistortedSpeech extends CallProblem {
  const CallProblemDistortedSpeech();

  static const String CONSTRUCTOR = 'callProblemDistortedSpeech';

  static CallProblemDistortedSpeech? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallProblemDistortedSpeech();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
