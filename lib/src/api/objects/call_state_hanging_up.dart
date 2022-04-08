import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The call is hanging up after discardCall has been called
@immutable
class CallStateHangingUp extends CallState {
  const CallStateHangingUp();

  static const String constructor = 'callStateHangingUp';

  static CallStateHangingUp? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallStateHangingUp();
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
