import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An authentication code is delivered via Firebase Authentication to the
/// official Android application
@immutable
class AuthenticationCodeTypeFirebaseAndroid extends AuthenticationCodeType {
  const AuthenticationCodeTypeFirebaseAndroid({
    required this.nonce,
    required this.length,
  });

  /// [nonce] Nonce to pass to the SafetyNet Attestation API
  final String nonce;

  /// [length] Length of the code
  final int length;

  static const String constructor = 'authenticationCodeTypeFirebaseAndroid';

  static AuthenticationCodeTypeFirebaseAndroid? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuthenticationCodeTypeFirebaseAndroid(
      nonce: json['nonce'],
      length: json['length'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'nonce': nonce,
        'length': length,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
