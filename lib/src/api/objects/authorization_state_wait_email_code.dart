import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// TDLib needs the user's authentication code sent to an email address to
/// authorize. Call `checkAuthenticationEmailCode` to provide the code
@immutable
class AuthorizationStateWaitEmailCode extends AuthorizationState {
  const AuthorizationStateWaitEmailCode({
    required this.allowAppleId,
    required this.allowGoogleId,
    required this.codeInfo,
    required this.nextPhoneNumberAuthorizationDate,
  });

  /// [allowAppleId] True, if authorization through Apple ID is allowed
  final bool allowAppleId;

  /// [allowGoogleId] True, if authorization through Google ID is allowed
  final bool allowGoogleId;

  /// [codeInfo] Information about the sent authentication code
  final EmailAddressAuthenticationCodeInfo codeInfo;

  /// [nextPhoneNumberAuthorizationDate] Point in time (Unix timestamp) when the
  /// user will be able to authorize with a code sent to the user's phone
  /// number; 0 if unknown
  final int nextPhoneNumberAuthorizationDate;

  static const String constructor = 'authorizationStateWaitEmailCode';

  static AuthorizationStateWaitEmailCode? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuthorizationStateWaitEmailCode(
      allowAppleId: json['allow_apple_id'],
      allowGoogleId: json['allow_google_id'],
      codeInfo: EmailAddressAuthenticationCodeInfo.fromJson(json['code_info'])!,
      nextPhoneNumberAuthorizationDate:
          json['next_phone_number_authorization_date'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'allow_apple_id': allowAppleId,
        'allow_google_id': allowGoogleId,
        'code_info': codeInfo.toJson(),
        'next_phone_number_authorization_date':
            nextPhoneNumberAuthorizationDate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
