import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Autosave settings applied to all channel chats without chat-specific
/// settings
@immutable
class AutosaveSettingsScopeChannelChats extends AutosaveSettingsScope {
  const AutosaveSettingsScopeChannelChats();

  static const String constructor = 'autosaveSettingsScopeChannelChats';

  static AutosaveSettingsScopeChannelChats? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const AutosaveSettingsScopeChannelChats();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
