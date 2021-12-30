import '../tdapi.dart';

/// A token for Tizen Push Service
class DeviceTokenTizenPush extends DeviceToken {
  DeviceTokenTizenPush({required this.regId});

  /// [regId] Push service registration identifier; may be empty to deregister a
  /// device
  final String regId;

  static const String CONSTRUCTOR = 'deviceTokenTizenPush';

  static DeviceTokenTizenPush? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DeviceTokenTizenPush(regId: json['reg_id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'reg_id': this.regId, '@type': CONSTRUCTOR};
}
