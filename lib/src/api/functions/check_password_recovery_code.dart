import '../tdapi.dart';

/// Checks whether a 2-step verification password recovery code sent to an
/// email address is valid
/// Returns [Ok]
class CheckPasswordRecoveryCode extends TdFunction {
  CheckPasswordRecoveryCode({required this.recoveryCode});

  /// [recoveryCode] Recovery code to check
  final String recoveryCode;

  static const String CONSTRUCTOR = 'checkPasswordRecoveryCode';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'recovery_code': this.recoveryCode, '@type': CONSTRUCTOR};
}
