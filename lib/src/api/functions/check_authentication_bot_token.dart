import '../tdapi.dart';

/// Checks the authentication token of a bot; to log in as a bot. Works only
/// when the current authorization state is authorizationStateWaitPhoneNumber.
/// Can be used instead of setAuthenticationPhoneNumber and
/// checkAuthenticationCode to log in
/// Returns [Ok]
class CheckAuthenticationBotToken extends TdFunction {
  CheckAuthenticationBotToken({required this.token});

  /// [token] The bot token
  final String token;

  static const String CONSTRUCTOR = 'checkAuthenticationBotToken';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'token': this.token, '@type': CONSTRUCTOR};
}
