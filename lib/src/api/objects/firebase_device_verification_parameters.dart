import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes parameters to be used for device verification
@immutable
abstract class FirebaseDeviceVerificationParameters extends TdObject {
  const FirebaseDeviceVerificationParameters();

  static const String constructor = 'firebaseDeviceVerificationParameters';

  /// Inherited by:
  /// [FirebaseDeviceVerificationParametersPlayIntegrity]
  /// [FirebaseDeviceVerificationParametersSafetyNet]
  static FirebaseDeviceVerificationParameters? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case FirebaseDeviceVerificationParametersPlayIntegrity.constructor:
        return FirebaseDeviceVerificationParametersPlayIntegrity.fromJson(json);
      case FirebaseDeviceVerificationParametersSafetyNet.constructor:
        return FirebaseDeviceVerificationParametersSafetyNet.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
