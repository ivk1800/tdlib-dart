import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The video was pixelated
@immutable
class CallProblemPixelatedVideo extends CallProblem {
  const CallProblemPixelatedVideo();

  static const String constructor = 'callProblemPixelatedVideo';

  static CallProblemPixelatedVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallProblemPixelatedVideo();
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
