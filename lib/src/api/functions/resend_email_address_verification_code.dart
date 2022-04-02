import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Re-sends the code to verify an email address to be added to a user's
/// Telegram Passport
/// Returns [EmailAddressAuthenticationCodeInfo]
class ResendEmailAddressVerificationCode extends TdFunction {
  ResendEmailAddressVerificationCode();

  static const String CONSTRUCTOR = 'resendEmailAddressVerificationCode';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
