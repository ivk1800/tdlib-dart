import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The call is hanging up after discardCall has been called
class CallStateHangingUp extends CallState {
  const CallStateHangingUp();

  static const String CONSTRUCTOR = 'callStateHangingUp';

  static CallStateHangingUp? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallStateHangingUp();
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
