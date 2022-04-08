import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user couldn't hear the other side
@immutable
class CallProblemSilentLocal extends CallProblem {
  const CallProblemSilentLocal();

  static const String constructor = 'callProblemSilentLocal';

  static CallProblemSilentLocal? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallProblemSilentLocal();
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
