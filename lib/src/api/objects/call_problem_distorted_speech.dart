import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The speech was distorted
@immutable
class CallProblemDistortedSpeech extends CallProblem {
  const CallProblemDistortedSpeech();

  static const String constructor = 'callProblemDistortedSpeech';

  static CallProblemDistortedSpeech? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallProblemDistortedSpeech();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
