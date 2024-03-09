import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Cancels verification of the 2-step verification recovery email address
/// Returns [PasswordState]
@immutable
class CancelRecoveryEmailAddressVerification extends TdFunction {
  const CancelRecoveryEmailAddressVerification();

  static const String constructor = 'cancelRecoveryEmailAddressVerification';

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
