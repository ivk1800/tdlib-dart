import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A token for Apple Push Notification service VoIP notifications
@immutable
class DeviceTokenApplePushVoIP extends DeviceToken {
  const DeviceTokenApplePushVoIP({
    required this.deviceToken,
    required this.isAppSandbox,
    required this.encrypt,
  });

  /// [deviceToken] Device token; may be empty to deregister a device
  final String deviceToken;

  /// [isAppSandbox] True, if App Sandbox is enabled
  final bool isAppSandbox;

  /// [encrypt] True, if push notifications must be additionally encrypted
  final bool encrypt;

  static const String constructor = 'deviceTokenApplePushVoIP';

  static DeviceTokenApplePushVoIP? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DeviceTokenApplePushVoIP(
      deviceToken: json['device_token'] as String,
      isAppSandbox: json['is_app_sandbox'] as bool,
      encrypt: json['encrypt'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'device_token': deviceToken,
        'is_app_sandbox': isAppSandbox,
        'encrypt': encrypt,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
