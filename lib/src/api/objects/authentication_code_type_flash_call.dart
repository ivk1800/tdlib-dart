import '../tdapi.dart';

/// An authentication code is delivered by an immediately canceled call to the
/// specified phone number. The number from which the call was made is the
/// code
class AuthenticationCodeTypeFlashCall extends AuthenticationCodeType {
  AuthenticationCodeTypeFlashCall({required this.pattern});

  /// [pattern] Pattern of the phone number from which the call will be made
  final String pattern;

  static const String CONSTRUCTOR = 'authenticationCodeTypeFlashCall';

  static AuthenticationCodeTypeFlashCall? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuthenticationCodeTypeFlashCall(pattern: json['pattern']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'pattern': this.pattern, '@type': CONSTRUCTOR};
}
