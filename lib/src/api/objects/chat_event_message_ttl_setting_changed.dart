import '../tdapi.dart';

/// The message TTL setting was changed
class ChatEventMessageTtlSettingChanged extends ChatEventAction {
  ChatEventMessageTtlSettingChanged(
      {required this.oldMessageTtlSetting, required this.newMessageTtlSetting});

  /// [oldMessageTtlSetting] Previous value of message_ttl_setting
  final int oldMessageTtlSetting;

  /// [newMessageTtlSetting] New value of message_ttl_setting
  final int newMessageTtlSetting;

  static const String CONSTRUCTOR = 'chatEventMessageTtlSettingChanged';

  static ChatEventMessageTtlSettingChanged? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventMessageTtlSettingChanged(
        oldMessageTtlSetting: json['old_message_ttl_setting'],
        newMessageTtlSetting: json['new_message_ttl_setting']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'old_message_ttl_setting': this.oldMessageTtlSetting,
        'new_message_ttl_setting': this.newMessageTtlSetting,
        '@type': CONSTRUCTOR
      };
}
