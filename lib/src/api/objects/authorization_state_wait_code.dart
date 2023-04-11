import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// TDLib needs the user's authentication code to authorize. Call
/// checkAuthenticationCode to check the code
@immutable
class AuthorizationStateWaitCode extends AuthorizationState {
  const AuthorizationStateWaitCode({
    required this.codeInfo,
  });

  /// [codeInfo] Information about the authorization code that was sent
  final AuthenticationCodeInfo codeInfo;

  static const String constructor = 'authorizationStateWaitCode';

  static AuthorizationStateWaitCode? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuthorizationStateWaitCode(
      codeInfo: AuthenticationCodeInfo.fromJson(
          json['code_info'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'code_info': codeInfo.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
