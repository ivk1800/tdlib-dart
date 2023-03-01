import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A token for HUAWEI Push Service
@immutable
class DeviceTokenHuaweiPush extends DeviceToken {
  const DeviceTokenHuaweiPush({
    required this.token,
    required this.encrypt,
  });

  /// [token] Device registration token; may be empty to deregister a device
  final String token;

  /// [encrypt] True, if push notifications must be additionally encrypted
  final bool encrypt;

  static const String constructor = 'deviceTokenHuaweiPush';

  static DeviceTokenHuaweiPush? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DeviceTokenHuaweiPush(
      token: json['token'],
      encrypt: json['encrypt'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'token': token,
        'encrypt': encrypt,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
