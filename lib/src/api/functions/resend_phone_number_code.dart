import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Resends the authentication code sent to a phone number. Works only if the
/// previously received authenticationCodeInfo next_code_type was not null and
/// the server-specified timeout has passed
/// Returns [AuthenticationCodeInfo]
@immutable
class ResendPhoneNumberCode extends TdFunction {
  const ResendPhoneNumberCode();

  static const String constructor = 'resendPhoneNumberCode';

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
