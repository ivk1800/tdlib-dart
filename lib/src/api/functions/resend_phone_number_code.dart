import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Resends the authentication code sent to a phone number. Works only if the
/// previously received authenticationCodeInfo next_code_type was not null and
/// the server-specified timeout has passed
/// Returns [AuthenticationCodeInfo]
@immutable
class ResendPhoneNumberCode extends TdFunction {
  const ResendPhoneNumberCode({
    this.reason,
  });

  /// [reason] Reason of code resending; pass null if unknown
  final ResendCodeReason? reason;

  static const String constructor = 'resendPhoneNumberCode';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'reason': reason?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
