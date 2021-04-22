import '../tdapi.dart';

/// Recovers the password with a password recovery code sent to an email
/// address that was previously set up. Works only when the current
/// authorization state is authorizationStateWaitPassword
/// Returns [Ok]
class RecoverAuthenticationPassword extends TdFunction {
  RecoverAuthenticationPassword({required this.recoveryCode});

  /// [recoveryCode] Recovery code to check
  final String recoveryCode;

  static const String CONSTRUCTOR = 'recoverAuthenticationPassword';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'recovery_code': this.recoveryCode, '@type': CONSTRUCTOR};
}
