import '../tdapi.dart';

/// Information about the authentication code that was sent
class AuthenticationCodeInfo extends TdObject {
  AuthenticationCodeInfo(
      {required this.phoneNumber,
      required this.type,
      this.nextType,
      required this.timeout});

  /// [phoneNumber] A phone number that is being authenticated
  final String phoneNumber;

  /// [type] Describes the way the code was sent to the user
  final AuthenticationCodeType type;

  /// [nextType] Describes the way the next code will be sent to the user; may
  /// be null
  final AuthenticationCodeType? nextType;

  /// [timeout] Timeout before the code should be re-sent, in seconds
  final int timeout;

  static const String CONSTRUCTOR = 'authenticationCodeInfo';

  static AuthenticationCodeInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuthenticationCodeInfo(
        phoneNumber: json['phone_number'],
        type: AuthenticationCodeType.fromJson(json['type'])!,
        nextType: AuthenticationCodeType.fromJson(json['next_type']),
        timeout: json['timeout']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'phone_number': this.phoneNumber,
        'type': this.type.toJson(),
        'next_type': this.nextType?.toJson(),
        'timeout': this.timeout,
        '@type': CONSTRUCTOR
      };
}
