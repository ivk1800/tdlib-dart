import '../tdapi.dart';

/// A token for Apple Push Notification service
class DeviceTokenApplePush extends DeviceToken {
  DeviceTokenApplePush({required this.deviceToken, required this.isAppSandbox});

  /// [deviceToken] Device token; may be empty to de-register a device
  final String deviceToken;

  /// [isAppSandbox] True, if App Sandbox is enabled
  final bool isAppSandbox;

  static const String CONSTRUCTOR = 'deviceTokenApplePush';

  static DeviceTokenApplePush? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DeviceTokenApplePush(
        deviceToken: json['device_token'],
        isAppSandbox: json['is_app_sandbox']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'device_token': this.deviceToken,
        'is_app_sandbox': this.isAppSandbox,
        '@type': CONSTRUCTOR
      };
}
