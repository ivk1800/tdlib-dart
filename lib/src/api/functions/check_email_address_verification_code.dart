import '../tdapi.dart';

/// Checks the email address verification code for Telegram Passport
/// Returns [Ok]
class CheckEmailAddressVerificationCode extends TdFunction {
  CheckEmailAddressVerificationCode({required this.code});

  /// [code] Verification code to check
  final String code;

  static const String CONSTRUCTOR = 'checkEmailAddressVerificationCode';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'code': this.code, '@type': CONSTRUCTOR};
}
