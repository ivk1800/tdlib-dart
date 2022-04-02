import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A token for Firebase Cloud Messaging
class DeviceTokenFirebaseCloudMessaging extends DeviceToken {
  DeviceTokenFirebaseCloudMessaging(
      {required this.token, required this.encrypt});

  /// [token] Device registration token; may be empty to deregister a device
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

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
