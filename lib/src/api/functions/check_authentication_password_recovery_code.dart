import '../tdapi.dart';

/// Checks whether a password recovery code sent to an email address is valid.
/// Works only when the current authorization state is
/// authorizationStateWaitPassword
/// Returns [Ok]
class CheckAuthenticationPasswordRecoveryCode extends TdFunction {
  CheckAuthenticationPasswordRecoveryCode({required this.recoveryCode});

  /// [recoveryCode] Recovery code to check
  final String recoveryCode;

  static const String CONSTRUCTOR = 'checkAuthenticationPasswordRecoveryCode';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'recovery_code': this.recoveryCode, '@type': CONSTRUCTOR};
}
