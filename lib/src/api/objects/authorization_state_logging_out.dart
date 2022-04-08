import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user is currently logging out
@immutable
class AuthorizationStateLoggingOut extends AuthorizationState {
  const AuthorizationStateLoggingOut();

  static const String constructor = 'authorizationStateLoggingOut';

  static AuthorizationStateLoggingOut? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const AuthorizationStateLoggingOut();
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
