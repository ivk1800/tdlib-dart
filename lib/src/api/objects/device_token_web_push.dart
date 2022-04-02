import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A token for web Push API
class DeviceTokenWebPush extends DeviceToken {
  DeviceTokenWebPush(
      {required this.endpoint,
      required this.p256dhBase64url,
      required this.authBase64url});

  /// [endpoint] Absolute URL exposed by the push service where the application
  /// server can send push messages; may be empty to deregister a device
  final String endpoint;

  /// [p256dhBase64url] Base64url-encoded P-256 elliptic curve Diffie-Hellman
  /// public key
  final String p256dhBase64url;

  /// [authBase64url] Base64url-encoded authentication secret
  final String authBase64url;

  static const String CONSTRUCTOR = 'deviceTokenWebPush';

  static DeviceTokenWebPush? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DeviceTokenWebPush(
        endpoint: json['endpoint'],
        p256dhBase64url: json['p256dh_base64url'],
        authBase64url: json['auth_base64url']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'endpoint': this.endpoint,
        'p256dh_base64url': this.p256dhBase64url,
        'auth_base64url': this.authBase64url,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
