import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A token for Windows Push Notification Services
@immutable
class DeviceTokenWindowsPush extends DeviceToken {
  const DeviceTokenWindowsPush({
    required this.accessToken,
  });

  /// [accessToken] The access token that will be used to send notifications;
  /// may be empty to deregister a device
  final String accessToken;

  static const String constructor = 'deviceTokenWindowsPush';

  static DeviceTokenWindowsPush? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DeviceTokenWindowsPush(
      accessToken: json['access_token'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'access_token': accessToken,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
