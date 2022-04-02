import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

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

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
