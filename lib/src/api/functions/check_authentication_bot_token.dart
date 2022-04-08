import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Checks the authentication token of a bot; to log in as a bot. Works only
/// when the current authorization state is authorizationStateWaitPhoneNumber.
/// Can be used instead of setAuthenticationPhoneNumber and
/// checkAuthenticationCode to log in
/// Returns [Ok]
@immutable
class CheckAuthenticationBotToken extends TdFunction {
  const CheckAuthenticationBotToken({
    required this.token,
  });

  /// [token] The bot token
  final String token;

  static const String constructor = 'checkAuthenticationBotToken';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'token': token,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
