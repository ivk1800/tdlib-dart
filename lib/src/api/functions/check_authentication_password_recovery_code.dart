import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Checks whether a 2-step verification password recovery code sent to an
/// email address is valid. Works only when the current authorization state is
/// authorizationStateWaitPassword
/// Returns [Ok]
@immutable
class CheckAuthenticationPasswordRecoveryCode extends TdFunction {
  const CheckAuthenticationPasswordRecoveryCode({
    required this.recoveryCode,
  });

  /// [recoveryCode] Recovery code to check
  final String recoveryCode;

  static const String constructor = 'checkAuthenticationPasswordRecoveryCode';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'recovery_code': recoveryCode,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
