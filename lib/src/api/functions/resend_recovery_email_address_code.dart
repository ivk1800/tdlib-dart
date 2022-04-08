import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Resends the 2-step verification recovery email address verification code
/// Returns [PasswordState]
@immutable
class ResendRecoveryEmailAddressCode extends TdFunction {
  const ResendRecoveryEmailAddressCode();

  static const String constructor = 'resendRecoveryEmailAddressCode';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
