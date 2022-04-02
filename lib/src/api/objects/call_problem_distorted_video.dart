import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

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

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
