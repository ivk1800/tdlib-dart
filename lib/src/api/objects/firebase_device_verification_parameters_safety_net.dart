import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Device verification must be performed with the SafetyNet Attestation API
@immutable
class FirebaseDeviceVerificationParametersSafetyNet
    extends FirebaseDeviceVerificationParameters {
  const FirebaseDeviceVerificationParametersSafetyNet({
    required this.nonce,
  });

  /// [nonce] Nonce to pass to the SafetyNet Attestation API
  final String nonce;

  static const String constructor =
      'firebaseDeviceVerificationParametersSafetyNet';

  static FirebaseDeviceVerificationParametersSafetyNet? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FirebaseDeviceVerificationParametersSafetyNet(
      nonce: json['nonce'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'nonce': nonce,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
