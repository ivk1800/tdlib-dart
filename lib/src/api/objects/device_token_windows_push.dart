import '../tdapi.dart';

/// A token for Windows Push Notification Services
class DeviceTokenWindowsPush extends DeviceToken {
  DeviceTokenWindowsPush({required this.accessToken});

  /// [accessToken] The access token that will be used to send notifications;
  /// may be empty to deregister a device
  final String accessToken;

  static const String CONSTRUCTOR = 'deviceTokenWindowsPush';

  static DeviceTokenWindowsPush? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DeviceTokenWindowsPush(accessToken: json['access_token']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'access_token': this.accessToken, '@type': CONSTRUCTOR};
}
