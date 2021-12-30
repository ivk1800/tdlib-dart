import '../tdapi.dart';

/// Checks the phone number verification code for Telegram Passport
/// Returns [Ok]
class CheckPhoneNumberVerificationCode extends TdFunction {
  CheckPhoneNumberVerificationCode({required this.code});

  /// [code] Verification code to check
  final String code;

  static const String CONSTRUCTOR = 'checkPhoneNumberVerificationCode';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'code': this.code, '@type': CONSTRUCTOR};
}
