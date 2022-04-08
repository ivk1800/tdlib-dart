import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The video was distorted
@immutable
class CallProblemDistortedVideo extends CallProblem {
  const CallProblemDistortedVideo();

  static const String constructor = 'callProblemDistortedVideo';

  static CallProblemDistortedVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallProblemDistortedVideo();
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
