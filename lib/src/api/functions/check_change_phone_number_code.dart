import '../tdapi.dart';

/// Checks the authentication code sent to confirm a new phone number of the
/// user
/// Returns [Ok]
class CheckChangePhoneNumberCode extends TdFunction {
  CheckChangePhoneNumberCode({required this.code});

  /// [code] Verification code received by SMS, phone call or flash call
  final String code;

  static const String CONSTRUCTOR = 'checkChangePhoneNumberCode';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'code': this.code, '@type': CONSTRUCTOR};
}
