import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Resends the 2-step verification recovery email address verification code
/// Returns [PasswordState]
class ResendRecoveryEmailAddressCode extends TdFunction {
  ResendRecoveryEmailAddressCode();

  static const String CONSTRUCTOR = 'resendRecoveryEmailAddressCode';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
