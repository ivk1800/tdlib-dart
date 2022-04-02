import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The user is currently logging out
class AuthorizationStateLoggingOut extends AuthorizationState {
  const AuthorizationStateLoggingOut();

  static const String CONSTRUCTOR = 'authorizationStateLoggingOut';

  static AuthorizationStateLoggingOut? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const AuthorizationStateLoggingOut();
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
