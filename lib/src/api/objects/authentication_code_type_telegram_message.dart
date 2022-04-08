import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An authentication code is delivered via a private Telegram message, which
/// can be viewed from another active session
@immutable
class AuthenticationCodeTypeTelegramMessage extends AuthenticationCodeType {
  const AuthenticationCodeTypeTelegramMessage({
    required this.length,
  });

  /// [length] Length of the code
  final int length;

  static const String constructor = 'authenticationCodeTypeTelegramMessage';

  static AuthenticationCodeTypeTelegramMessage? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuthenticationCodeTypeTelegramMessage(
      length: json['length'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'length': length,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
