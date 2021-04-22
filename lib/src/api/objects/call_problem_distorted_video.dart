import '../tdapi.dart';

/// The video was distorted
class CallProblemDistortedVideo extends CallProblem {
  const CallProblemDistortedVideo();

  static const String CONSTRUCTOR = 'callProblemDistortedVideo';

  static CallProblemDistortedVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallProblemDistortedVideo();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
