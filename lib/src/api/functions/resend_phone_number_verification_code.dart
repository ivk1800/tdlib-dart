import '../tdapi.dart';

/// Re-sends the code to verify a phone number to be added to a user's
/// Telegram Passport
/// Returns [AuthenticationCodeInfo]
class ResendPhoneNumberVerificationCode extends TdFunction {
  ResendPhoneNumberVerificationCode();

  static const String CONSTRUCTOR = 'resendPhoneNumberVerificationCode';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
