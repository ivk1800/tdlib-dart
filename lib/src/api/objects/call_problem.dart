import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the exact type of a problem with a call
@immutable
abstract class CallProblem extends TdObject {
  const CallProblem();

  static const String constructor = 'callProblem';

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

    switch (json['@type']) {
      case CallProblemEcho.constructor:
        return CallProblemEcho.fromJson(json);
      case CallProblemNoise.constructor:
        return CallProblemNoise.fromJson(json);
      case CallProblemInterruptions.constructor:
        return CallProblemInterruptions.fromJson(json);
      case CallProblemDistortedSpeech.constructor:
        return CallProblemDistortedSpeech.fromJson(json);
      case CallProblemSilentLocal.constructor:
        return CallProblemSilentLocal.fromJson(json);
      case CallProblemSilentRemote.constructor:
        return CallProblemSilentRemote.fromJson(json);
      case CallProblemDropped.constructor:
        return CallProblemDropped.fromJson(json);
      case CallProblemDistortedVideo.constructor:
        return CallProblemDistortedVideo.fromJson(json);
      case CallProblemPixelatedVideo.constructor:
        return CallProblemPixelatedVideo.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
