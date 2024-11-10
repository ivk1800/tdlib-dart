import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A digit-only authentication code is delivered via Firebase Authentication
/// to the official Android application
@immutable
class AuthenticationCodeTypeFirebaseAndroid extends AuthenticationCodeType {
  const AuthenticationCodeTypeFirebaseAndroid({
    required this.deviceVerificationParameters,
    required this.length,
  });

  /// [deviceVerificationParameters] Parameters to be used for device
  /// verification
  final FirebaseDeviceVerificationParameters deviceVerificationParameters;

  /// [length] Length of the code
  final int length;

  static const String constructor = 'authenticationCodeTypeFirebaseAndroid';

  static AuthenticationCodeTypeFirebaseAndroid? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuthenticationCodeTypeFirebaseAndroid(
      deviceVerificationParameters:
          FirebaseDeviceVerificationParameters.fromJson(
              json['device_verification_parameters'] as Map<String, dynamic>?)!,
      length: json['length'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'device_verification_parameters': deviceVerificationParameters.toJson(),
        'length': length,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
