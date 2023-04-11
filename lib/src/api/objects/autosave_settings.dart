import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes autosave settings
@immutable
class AutosaveSettings extends TdObject {
  const AutosaveSettings({
    required this.privateChatSettings,
    required this.groupSettings,
    required this.channelSettings,
    required this.exceptions,
  });

  /// [privateChatSettings] Default autosave settings for private chats
  final ScopeAutosaveSettings privateChatSettings;

  /// [groupSettings] Default autosave settings for basic group and supergroup
  /// chats
  final ScopeAutosaveSettings groupSettings;

  /// [channelSettings] Default autosave settings for channel chats
  final ScopeAutosaveSettings channelSettings;

  /// [exceptions] Autosave settings for specific chats
  final List<AutosaveSettingsException> exceptions;

  static const String constructor = 'autosaveSettings';

  static AutosaveSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AutosaveSettings(
      privateChatSettings: ScopeAutosaveSettings.fromJson(
          json['private_chat_settings'] as Map<String, dynamic>?)!,
      groupSettings: ScopeAutosaveSettings.fromJson(
          json['group_settings'] as Map<String, dynamic>?)!,
      channelSettings: ScopeAutosaveSettings.fromJson(
          json['channel_settings'] as Map<String, dynamic>?)!,
      exceptions: List<AutosaveSettingsException>.from(
          ((json['exceptions'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => AutosaveSettingsException.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'private_chat_settings': privateChatSettings.toJson(),
        'group_settings': groupSettings.toJson(),
        'channel_settings': channelSettings.toJson(),
        'exceptions': exceptions.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
