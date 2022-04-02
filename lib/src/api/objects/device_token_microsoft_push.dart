import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A token for Microsoft Push Notification Service
class DeviceTokenMicrosoftPush extends DeviceToken {
  DeviceTokenMicrosoftPush({required this.channelUri});

  /// [channelUri] Push notification channel URI; may be empty to deregister a
  /// device
  final String channelUri;

  static const String CONSTRUCTOR = 'deviceTokenMicrosoftPush';

  static DeviceTokenMicrosoftPush? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DeviceTokenMicrosoftPush(channelUri: json['channel_uri']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'channel_uri': this.channelUri, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
