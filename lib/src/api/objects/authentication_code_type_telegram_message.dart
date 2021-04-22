import '../tdapi.dart';

/// An authentication code is delivered via a private Telegram message, which
/// can be viewed from another active session
class AuthenticationCodeTypeTelegramMessage extends AuthenticationCodeType {
  AuthenticationCodeTypeTelegramMessage({required this.length});

  /// [length] Length of the code
  final int length;

  static const String CONSTRUCTOR = 'authenticationCodeTypeTelegramMessage';

  static AuthenticationCodeTypeTelegramMessage? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuthenticationCodeTypeTelegramMessage(length: json['length']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'length': this.length, '@type': CONSTRUCTOR};
}
