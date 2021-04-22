import '../tdapi.dart';

/// Sends a code to verify an email address to be added to a user's Telegram
/// Passport
/// Returns [EmailAddressAuthenticationCodeInfo]
class SendEmailAddressVerificationCode extends TdFunction {
  SendEmailAddressVerificationCode({required this.emailAddress});

  /// [emailAddress] Email address
  final String emailAddress;

  static const String CONSTRUCTOR = 'sendEmailAddressVerificationCode';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'email_address': this.emailAddress, '@type': CONSTRUCTOR};
}
