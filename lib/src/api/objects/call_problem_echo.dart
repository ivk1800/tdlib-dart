import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user heard their own voice
@immutable
class CallProblemEcho extends CallProblem {
  const CallProblemEcho();

  static const String constructor = 'callProblemEcho';

  static CallProblemEcho? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallProblemEcho();
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
