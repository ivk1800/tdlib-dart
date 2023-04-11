import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An authentication code is delivered by an immediately canceled call to the
/// specified phone number. The last digits of the phone number that calls are
/// the code that must be entered manually by the user
@immutable
class AuthenticationCodeTypeMissedCall extends AuthenticationCodeType {
  const AuthenticationCodeTypeMissedCall({
    required this.phoneNumberPrefix,
    required this.length,
  });

  /// [phoneNumberPrefix] Prefix of the phone number from which the call will be
  /// made
  final String phoneNumberPrefix;

  /// [length] Number of digits in the code, excluding the prefix
  final int length;

  static const String constructor = 'authenticationCodeTypeMissedCall';

  static AuthenticationCodeTypeMissedCall? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuthenticationCodeTypeMissedCall(
      phoneNumberPrefix: json['phone_number_prefix'] as String,
      length: json['length'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'phone_number_prefix': phoneNumberPrefix,
        'length': length,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
