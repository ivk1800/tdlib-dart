import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A token for BlackBerry Push Service
class DeviceTokenBlackBerryPush extends DeviceToken {
  DeviceTokenBlackBerryPush({required this.token});

  /// [token] Token; may be empty to deregister a device
  final String token;

  static const String CONSTRUCTOR = 'deviceTokenBlackBerryPush';

  static DeviceTokenBlackBerryPush? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DeviceTokenBlackBerryPush(token: json['token']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'token': this.token, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
