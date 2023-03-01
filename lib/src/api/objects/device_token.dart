import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a data needed to subscribe for push notifications through
/// registerDevice method.
@immutable
abstract class DeviceToken extends TdObject {
  const DeviceToken();

  static const String constructor = 'deviceToken';

  /// Inherited by:
  /// [DeviceTokenApplePushVoIP]
  /// [DeviceTokenApplePush]
  /// [DeviceTokenBlackBerryPush]
  /// [DeviceTokenFirebaseCloudMessaging]
  /// [DeviceTokenHuaweiPush]
  /// [DeviceTokenMicrosoftPushVoIP]
  /// [DeviceTokenMicrosoftPush]
  /// [DeviceTokenSimplePush]
  /// [DeviceTokenTizenPush]
  /// [DeviceTokenUbuntuPush]
  /// [DeviceTokenWebPush]
  /// [DeviceTokenWindowsPush]
  static DeviceToken? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case DeviceTokenApplePush.constructor:
        return DeviceTokenApplePush.fromJson(json);
      case DeviceTokenApplePushVoIP.constructor:
        return DeviceTokenApplePushVoIP.fromJson(json);
      case DeviceTokenBlackBerryPush.constructor:
        return DeviceTokenBlackBerryPush.fromJson(json);
      case DeviceTokenFirebaseCloudMessaging.constructor:
        return DeviceTokenFirebaseCloudMessaging.fromJson(json);
      case DeviceTokenHuaweiPush.constructor:
        return DeviceTokenHuaweiPush.fromJson(json);
      case DeviceTokenMicrosoftPush.constructor:
        return DeviceTokenMicrosoftPush.fromJson(json);
      case DeviceTokenMicrosoftPushVoIP.constructor:
        return DeviceTokenMicrosoftPushVoIP.fromJson(json);
      case DeviceTokenSimplePush.constructor:
        return DeviceTokenSimplePush.fromJson(json);
      case DeviceTokenTizenPush.constructor:
        return DeviceTokenTizenPush.fromJson(json);
      case DeviceTokenUbuntuPush.constructor:
        return DeviceTokenUbuntuPush.fromJson(json);
      case DeviceTokenWebPush.constructor:
        return DeviceTokenWebPush.fromJson(json);
      case DeviceTokenWindowsPush.constructor:
        return DeviceTokenWindowsPush.fromJson(json);
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
