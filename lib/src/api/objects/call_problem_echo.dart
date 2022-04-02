import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The user heard their own voice
class CallProblemEcho extends CallProblem {
  const CallProblemEcho();

  static const String CONSTRUCTOR = 'callProblemEcho';

  static CallProblemEcho? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallProblemEcho();
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
