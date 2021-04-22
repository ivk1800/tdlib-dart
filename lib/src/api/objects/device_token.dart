import '../tdapi.dart';

/// Represents a data needed to subscribe for push notifications through
/// registerDevice method. To use specific push notification service, the
/// correct application platform must be specified and a valid server
/// authentication data must be uploaded at https://my.telegram.org
abstract class DeviceToken extends TdObject {
  const DeviceToken();

  static const String CONSTRUCTOR = 'deviceToken';

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

    switch (json["@type"]) {
      case DeviceTokenFirebaseCloudMessaging.CONSTRUCTOR:
        return DeviceTokenFirebaseCloudMessaging.fromJson(json);
      case DeviceTokenApplePush.CONSTRUCTOR:
        return DeviceTokenApplePush.fromJson(json);
      case DeviceTokenApplePushVoIP.CONSTRUCTOR:
        return DeviceTokenApplePushVoIP.fromJson(json);
      case DeviceTokenWindowsPush.CONSTRUCTOR:
        return DeviceTokenWindowsPush.fromJson(json);
      case DeviceTokenMicrosoftPush.CONSTRUCTOR:
        return DeviceTokenMicrosoftPush.fromJson(json);
      case DeviceTokenMicrosoftPushVoIP.CONSTRUCTOR:
        return DeviceTokenMicrosoftPushVoIP.fromJson(json);
      case DeviceTokenWebPush.CONSTRUCTOR:
        return DeviceTokenWebPush.fromJson(json);
      case DeviceTokenSimplePush.CONSTRUCTOR:
        return DeviceTokenSimplePush.fromJson(json);
      case DeviceTokenUbuntuPush.CONSTRUCTOR:
        return DeviceTokenUbuntuPush.fromJson(json);
      case DeviceTokenBlackBerryPush.CONSTRUCTOR:
        return DeviceTokenBlackBerryPush.fromJson(json);
      case DeviceTokenTizenPush.CONSTRUCTOR:
        return DeviceTokenTizenPush.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
