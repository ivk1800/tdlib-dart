import '../tdapi.dart';

/// Resends phone number confirmation code
/// Returns [AuthenticationCodeInfo]
class ResendPhoneNumberConfirmationCode extends TdFunction {
  ResendPhoneNumberConfirmationCode();

  static const String CONSTRUCTOR = 'resendPhoneNumberConfirmationCode';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
