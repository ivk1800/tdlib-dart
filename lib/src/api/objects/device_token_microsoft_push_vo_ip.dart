import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A token for Microsoft Push Notification Service VoIP channel
@immutable
class DeviceTokenMicrosoftPushVoIP extends DeviceToken {
  const DeviceTokenMicrosoftPushVoIP({
    required this.channelUri,
  });

  /// [channelUri] Push notification channel URI; may be empty to deregister a
  /// device
  final String channelUri;

  static const String constructor = 'deviceTokenMicrosoftPushVoIP';

  static DeviceTokenMicrosoftPushVoIP? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DeviceTokenMicrosoftPushVoIP(
      channelUri: json['channel_uri'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'channel_uri': channelUri,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
