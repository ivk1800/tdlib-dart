import '../tdapi.dart';

/// Resends the 2-step verification recovery email address verification code
/// Returns [PasswordState]
class ResendRecoveryEmailAddressCode extends TdFunction {
  ResendRecoveryEmailAddressCode();

  static const String CONSTRUCTOR = 'resendRecoveryEmailAddressCode';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
