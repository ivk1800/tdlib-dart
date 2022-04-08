import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Re-sends the authentication code sent to confirm a new phone number for
/// the current user. Works only if the previously received
/// authenticationCodeInfo next_code_type was not null and the
/// server-specified timeout has passed
/// Returns [AuthenticationCodeInfo]
@immutable
class ResendChangePhoneNumberCode extends TdFunction {
  const ResendChangePhoneNumberCode();

  static const String constructor = 'resendChangePhoneNumberCode';

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
