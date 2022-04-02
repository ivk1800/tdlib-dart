import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// TDLib needs TdlibParameters for initialization
class AuthorizationStateWaitTdlibParameters extends AuthorizationState {
  const AuthorizationStateWaitTdlibParameters();

  static const String CONSTRUCTOR = 'authorizationStateWaitTdlibParameters';

  static AuthorizationStateWaitTdlibParameters? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const AuthorizationStateWaitTdlibParameters();
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
