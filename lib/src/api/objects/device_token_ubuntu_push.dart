import '../tdapi.dart';

/// A token for Ubuntu Push Client service
class DeviceTokenUbuntuPush extends DeviceToken {
  DeviceTokenUbuntuPush({required this.token});

  /// [token] Token; may be empty to de-register a device
  final String token;

  static const String CONSTRUCTOR = 'deviceTokenUbuntuPush';

  static DeviceTokenUbuntuPush? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DeviceTokenUbuntuPush(token: json['token']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'token': this.token, '@type': CONSTRUCTOR};
}
