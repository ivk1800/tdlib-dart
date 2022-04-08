import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a data needed to subscribe for push notifications through
/// registerDevice method. To use specific push notification service, the
/// correct application platform must be specified and a valid server
/// authentication data must be uploaded at https://my.telegram.org
@immutable
abstract class DeviceToken extends TdObject {
  const DeviceToken();

  static const String constructor = 'deviceToken';

  /// Inherited by:
  /// [DeviceTokenFirebaseCloudMessaging]
  /// [DeviceTokenApplePush]
  /// [DeviceTokenApplePushVoIP]
  /// [DeviceTokenWindowsPush]
  /// [DeviceTokenMicrosoftPush]
  /// [DeviceTokenMicrosoftPushVoIP]
  /// [DeviceTokenWebPush]
  /// [DeviceTokenSimplePush]
  /// [DeviceTokenUbuntuPush]
  /// [DeviceTokenBlackBerryPush]
  /// [DeviceTokenTizenPush]
  static DeviceToken? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case DeviceTokenFirebaseCloudMessaging.constructor:
        return DeviceTokenFirebaseCloudMessaging.fromJson(json);
      case DeviceTokenApplePush.constructor:
        return DeviceTokenApplePush.fromJson(json);
      case DeviceTokenApplePushVoIP.constructor:
        return DeviceTokenApplePushVoIP.fromJson(json);
      case DeviceTokenWindowsPush.constructor:
        return DeviceTokenWindowsPush.fromJson(json);
      case DeviceTokenMicrosoftPush.constructor:
        return DeviceTokenMicrosoftPush.fromJson(json);
      case DeviceTokenMicrosoftPushVoIP.constructor:
        return DeviceTokenMicrosoftPushVoIP.fromJson(json);
      case DeviceTokenWebPush.constructor:
        return DeviceTokenWebPush.fromJson(json);
      case DeviceTokenSimplePush.constructor:
        return DeviceTokenSimplePush.fromJson(json);
      case DeviceTokenUbuntuPush.constructor:
        return DeviceTokenUbuntuPush.fromJson(json);
      case DeviceTokenBlackBerryPush.constructor:
        return DeviceTokenBlackBerryPush.fromJson(json);
      case DeviceTokenTizenPush.constructor:
        return DeviceTokenTizenPush.fromJson(json);
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
