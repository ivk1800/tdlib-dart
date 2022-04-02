import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Describes the exact type of a problem with a call
abstract class CallProblem extends TdObject {
  const CallProblem();

  static const String CONSTRUCTOR = 'callProblem';

  /// Inherited by:
  /// [CallProblemEcho]
  /// [CallProblemNoise]
  /// [CallProblemInterruptions]
  /// [CallProblemDistortedSpeech]
  /// [CallProblemSilentLocal]
  /// [CallProblemSilentRemote]
  /// [CallProblemDropped]
  /// [CallProblemDistortedVideo]
  /// [CallProblemPixelatedVideo]
  static CallProblem? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case CallProblemEcho.CONSTRUCTOR:
        return CallProblemEcho.fromJson(json);
      case CallProblemNoise.CONSTRUCTOR:
        return CallProblemNoise.fromJson(json);
      case CallProblemInterruptions.CONSTRUCTOR:
        return CallProblemInterruptions.fromJson(json);
      case CallProblemDistortedSpeech.CONSTRUCTOR:
        return CallProblemDistortedSpeech.fromJson(json);
      case CallProblemSilentLocal.CONSTRUCTOR:
        return CallProblemSilentLocal.fromJson(json);
      case CallProblemSilentRemote.CONSTRUCTOR:
        return CallProblemSilentRemote.fromJson(json);
      case CallProblemDropped.CONSTRUCTOR:
        return CallProblemDropped.fromJson(json);
      case CallProblemDistortedVideo.CONSTRUCTOR:
        return CallProblemDistortedVideo.fromJson(json);
      case CallProblemPixelatedVideo.CONSTRUCTOR:
        return CallProblemPixelatedVideo.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
