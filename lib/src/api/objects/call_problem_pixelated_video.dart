import '../tdapi.dart';

/// The video was pixelated
class CallProblemPixelatedVideo extends CallProblem {
  const CallProblemPixelatedVideo();

  static const String CONSTRUCTOR = 'callProblemPixelatedVideo';

  static CallProblemPixelatedVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallProblemPixelatedVideo();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
