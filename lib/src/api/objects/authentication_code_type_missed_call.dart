import '../tdapi.dart';

/// An authentication code is delivered by an immediately canceled call to the
/// specified phone number. The last digits of the phone number that calls are
/// the code that must be entered manually by the user
class AuthenticationCodeTypeMissedCall extends AuthenticationCodeType {
  AuthenticationCodeTypeMissedCall(
      {required this.phoneNumberPrefix, required this.length});

  /// [phoneNumberPrefix] Prefix of the phone number from which the call will be
  /// made
  final String phoneNumberPrefix;

  /// [length] Number of digits in the code, excluding the prefix
  final int length;

  static const String CONSTRUCTOR = 'authenticationCodeTypeMissedCall';

  static AuthenticationCodeTypeMissedCall? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuthenticationCodeTypeMissedCall(
        phoneNumberPrefix: json['phone_number_prefix'], length: json['length']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'phone_number_prefix': this.phoneNumberPrefix,
        'length': this.length,
        '@type': CONSTRUCTOR
      };
}
