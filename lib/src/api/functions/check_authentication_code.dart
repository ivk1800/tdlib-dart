import '../tdapi.dart';

/// Checks the authentication code. Works only when the current authorization
/// state is authorizationStateWaitCode
/// Returns [Ok]
class CheckAuthenticationCode extends TdFunction {
  CheckAuthenticationCode({required this.code});

  /// [code] The verification code received via SMS, Telegram message, phone
  /// call, or flash call
  final String code;

  static const String CONSTRUCTOR = 'checkAuthenticationCode';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'code': this.code, '@type': CONSTRUCTOR};
}
