import '../tdapi.dart';

/// An authentication code is delivered via an SMS message to the specified
/// phone number
class AuthenticationCodeTypeSms extends AuthenticationCodeType {
  AuthenticationCodeTypeSms({required this.length});

  /// [length] Length of the code
  final int length;

  static const String CONSTRUCTOR = 'authenticationCodeTypeSms';

  static AuthenticationCodeTypeSms? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuthenticationCodeTypeSms(length: json['length']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'length': this.length, '@type': CONSTRUCTOR};
}
