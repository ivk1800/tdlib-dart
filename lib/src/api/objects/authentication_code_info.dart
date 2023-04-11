import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Information about the authentication code that was sent
@immutable
class AuthenticationCodeInfo extends TdObject {
  const AuthenticationCodeInfo({
    required this.phoneNumber,
    required this.type,
    this.nextType,
    required this.timeout,
  });

  /// [phoneNumber] A phone number that is being authenticated
  final String phoneNumber;

  /// [type] The way the code was sent to the user
  final AuthenticationCodeType type;

  /// [nextType] The way the next code will be sent to the user; may be null
  final AuthenticationCodeType? nextType;

  /// [timeout] Timeout before the code can be re-sent, in seconds
  final int timeout;

  static const String constructor = 'authenticationCodeInfo';

  static AuthenticationCodeInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuthenticationCodeInfo(
      phoneNumber: json['phone_number'] as String,
      type: AuthenticationCodeType.fromJson(
          json['type'] as Map<String, dynamic>?)!,
      nextType: AuthenticationCodeType.fromJson(
          json['next_type'] as Map<String, dynamic>?),
      timeout: json['timeout'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'phone_number': phoneNumber,
        'type': type.toJson(),
        'next_type': nextType?.toJson(),
        'timeout': timeout,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
