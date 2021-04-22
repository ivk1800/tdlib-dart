import '../tdapi.dart';

/// A token for Simple Push API for Firefox OS
class DeviceTokenSimplePush extends DeviceToken {
  DeviceTokenSimplePush({required this.endpoint});

  /// [endpoint] Absolute URL exposed by the push service where the application
  /// server can send push messages; may be empty to de-register a device
  final String endpoint;

  static const String CONSTRUCTOR = 'deviceTokenSimplePush';

  static DeviceTokenSimplePush? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DeviceTokenSimplePush(endpoint: json['endpoint']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'endpoint': this.endpoint, '@type': CONSTRUCTOR};
}
