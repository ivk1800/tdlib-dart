import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An authentication code is a phrase from multiple words delivered via an
/// SMS message to the specified phone number; non-official applications may
/// not receive this type of code
@immutable
class AuthenticationCodeTypeSmsPhrase extends AuthenticationCodeType {
  const AuthenticationCodeTypeSmsPhrase({
    required this.firstWord,
  });

  /// [firstWord] The first word of the phrase if known
  final String firstWord;

  static const String constructor = 'authenticationCodeTypeSmsPhrase';

  static AuthenticationCodeTypeSmsPhrase? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuthenticationCodeTypeSmsPhrase(
      firstWord: json['first_word'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'first_word': firstWord,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
