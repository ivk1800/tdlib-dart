import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// TDLib is closing, all subsequent queries will be answered with the error
/// 500. Note that closing TDLib can take a while. All resources will be freed
/// only after authorizationStateClosed has been received
class AuthorizationStateClosing extends AuthorizationState {
  const AuthorizationStateClosing();

  static const String CONSTRUCTOR = 'authorizationStateClosing';

  static AuthorizationStateClosing? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const AuthorizationStateClosing();
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
