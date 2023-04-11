import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A token for Firebase Cloud Messaging
@immutable
class DeviceTokenFirebaseCloudMessaging extends DeviceToken {
  const DeviceTokenFirebaseCloudMessaging({
    required this.token,
    required this.encrypt,
  });

  /// [token] Device registration token; may be empty to deregister a device
  final String token;

  /// [encrypt] True, if push notifications must be additionally encrypted
  final bool encrypt;

  static const String constructor = 'deviceTokenFirebaseCloudMessaging';

  static DeviceTokenFirebaseCloudMessaging? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DeviceTokenFirebaseCloudMessaging(
      token: json['token'] as String,
      encrypt: json['encrypt'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'token': token,
        'encrypt': encrypt,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
