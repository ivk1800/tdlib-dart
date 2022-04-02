import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Checks the 2-step verification recovery email address verification code
/// Returns [PasswordState]
class CheckRecoveryEmailAddressCode extends TdFunction {
  CheckRecoveryEmailAddressCode({required this.code});

  /// [code] Verification code to check
  final String code;

  static const String CONSTRUCTOR = 'checkRecoveryEmailAddressCode';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'code': this.code, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
