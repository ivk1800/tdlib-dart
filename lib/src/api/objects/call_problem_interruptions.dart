import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The other side kept disappearing
class CallProblemInterruptions extends CallProblem {
  const CallProblemInterruptions();

  static const String CONSTRUCTOR = 'callProblemInterruptions';

  static CallProblemInterruptions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallProblemInterruptions();
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
