import '../tdapi.dart';

/// A token for Firebase Cloud Messaging
class DeviceTokenFirebaseCloudMessaging extends DeviceToken {
  DeviceTokenFirebaseCloudMessaging(
      {required this.token, required this.encrypt});

  /// [token] Device registration token; may be empty to de-register a device
  final String token;

  /// [encrypt] True, if push notifications must be additionally encrypted
  final bool encrypt;

  static const String CONSTRUCTOR = 'deviceTokenFirebaseCloudMessaging';

  static DeviceTokenFirebaseCloudMessaging? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DeviceTokenFirebaseCloudMessaging(
        token: json['token'], encrypt: json['encrypt']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'token': this.token, 'encrypt': this.encrypt, '@type': CONSTRUCTOR};
}
