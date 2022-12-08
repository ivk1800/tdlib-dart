import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns all updates needed to restore current TDLib state, i.e. all actual
/// updateAuthorizationState/updateUser/updateNewChat and others. This is
/// especially useful if TDLib is run in a separate process. Can be called
/// before initialization
/// Returns [Updates]
@immutable
class GetCurrentState extends TdFunction {
  const GetCurrentState();

  static const String constructor = 'getCurrentState';

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
