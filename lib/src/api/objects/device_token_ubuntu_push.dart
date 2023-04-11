import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A token for Ubuntu Push Client service
@immutable
class DeviceTokenUbuntuPush extends DeviceToken {
  const DeviceTokenUbuntuPush({
    required this.token,
  });

  /// [token] Token; may be empty to deregister a device
  final String token;

  static const String constructor = 'deviceTokenUbuntuPush';

  static DeviceTokenUbuntuPush? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DeviceTokenUbuntuPush(
      token: json['token'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'token': token,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
