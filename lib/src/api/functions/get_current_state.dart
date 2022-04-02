import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns all updates needed to restore current TDLib state, i.e. all actual
/// UpdateAuthorizationState/UpdateUser/UpdateNewChat and others. This is
/// especially useful if TDLib is run in a separate process. Can be called
/// before initialization
/// Returns [Updates]
class GetCurrentState extends TdFunction {
  GetCurrentState();

  static const String CONSTRUCTOR = 'getCurrentState';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
