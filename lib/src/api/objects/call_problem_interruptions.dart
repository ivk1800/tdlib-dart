import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The other side kept disappearing
@immutable
class CallProblemInterruptions extends CallProblem {
  const CallProblemInterruptions();

  static const String constructor = 'callProblemInterruptions';

  static CallProblemInterruptions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallProblemInterruptions();
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
