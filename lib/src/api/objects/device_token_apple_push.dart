import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A token for Apple Push Notification service
@immutable
class DeviceTokenApplePush extends DeviceToken {
  const DeviceTokenApplePush({
    required this.deviceToken,
    required this.isAppSandbox,
  });

  /// [deviceToken] Device token; may be empty to deregister a device
  final String deviceToken;

  /// [isAppSandbox] True, if App Sandbox is enabled
  final bool isAppSandbox;

  static const String constructor = 'deviceTokenApplePush';

  static DeviceTokenApplePush? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DeviceTokenApplePush(
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
