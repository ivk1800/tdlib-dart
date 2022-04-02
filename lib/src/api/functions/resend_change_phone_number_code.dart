import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Re-sends the authentication code sent to confirm a new phone number for
/// the current user. Works only if the previously received
/// authenticationCodeInfo next_code_type was not null and the
/// server-specified timeout has passed
/// Returns [AuthenticationCodeInfo]
class ResendChangePhoneNumberCode extends TdFunction {
  ResendChangePhoneNumberCode();

  static const String CONSTRUCTOR = 'resendChangePhoneNumberCode';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
