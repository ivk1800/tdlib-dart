import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A token for Simple Push API for Firefox OS
@immutable
class DeviceTokenSimplePush extends DeviceToken {
  const DeviceTokenSimplePush({
    required this.endpoint,
  });

  /// [endpoint] Absolute URL exposed by the push service where the application
  /// server can send push messages; may be empty to deregister a device
  final String endpoint;

  static const String constructor = 'deviceTokenSimplePush';

  static DeviceTokenSimplePush? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DeviceTokenSimplePush(
      endpoint: json['endpoint'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'endpoint': endpoint,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
