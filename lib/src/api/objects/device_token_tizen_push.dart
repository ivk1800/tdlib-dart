import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A token for Tizen Push Service
@immutable
class DeviceTokenTizenPush extends DeviceToken {
  const DeviceTokenTizenPush({
    required this.regId,
  });

  /// [regId] Push service registration identifier; may be empty to deregister a
  /// device
  final String regId;

  static const String constructor = 'deviceTokenTizenPush';

  static DeviceTokenTizenPush? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DeviceTokenTizenPush(
      regId: json['reg_id'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'reg_id': regId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
