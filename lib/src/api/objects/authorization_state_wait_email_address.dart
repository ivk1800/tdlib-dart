import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// TDLib needs the user's email address to authorize. Call
/// `setAuthenticationEmailAddress` to provide the email address, or directly
/// call `checkAuthenticationEmailCode` with Apple ID/Google ID token if
/// allowed
@immutable
class AuthorizationStateWaitEmailAddress extends AuthorizationState {
  const AuthorizationStateWaitEmailAddress({
    required this.allowAppleId,
    required this.allowGoogleId,
  });

  /// [allowAppleId] True, if authorization through Apple ID is allowed
  final bool allowAppleId;

  /// [allowGoogleId] True, if authorization through Google ID is allowed
  final bool allowGoogleId;

  static const String constructor = 'authorizationStateWaitEmailAddress';

  static AuthorizationStateWaitEmailAddress? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuthorizationStateWaitEmailAddress(
      allowAppleId: json['allow_apple_id'],
      allowGoogleId: json['allow_google_id'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'allow_apple_id': allowAppleId,
        'allow_google_id': allowGoogleId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
