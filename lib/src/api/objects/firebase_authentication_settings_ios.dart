import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Settings for Firebase Authentication in the official iOS application
@immutable
class FirebaseAuthenticationSettingsIos extends FirebaseAuthenticationSettings {
  const FirebaseAuthenticationSettingsIos({
    required this.deviceToken,
    required this.isAppSandbox,
  });

  /// [deviceToken] Device token from Apple Push Notification service
  final String deviceToken;

  /// [isAppSandbox] True, if App Sandbox is enabled
  final bool isAppSandbox;

  static const String constructor = 'firebaseAuthenticationSettingsIos';

  static FirebaseAuthenticationSettingsIos? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FirebaseAuthenticationSettingsIos(
      deviceToken: json['device_token'],
      isAppSandbox: json['is_app_sandbox'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'device_token': deviceToken,
        'is_app_sandbox': isAppSandbox,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
