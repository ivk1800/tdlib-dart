import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An authentication code is delivered by an immediately canceled call to the
/// specified phone number. The phone number that calls is the code that must
/// be entered automatically
@immutable
class AuthenticationCodeTypeFlashCall extends AuthenticationCodeType {
  const AuthenticationCodeTypeFlashCall({
    required this.pattern,
  });

  /// [pattern] Pattern of the phone number from which the call will be made
  final String pattern;

  static const String constructor = 'authenticationCodeTypeFlashCall';

  static AuthenticationCodeTypeFlashCall? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuthenticationCodeTypeFlashCall(
      pattern: json['pattern'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'pattern': pattern,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
