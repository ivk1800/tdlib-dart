import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Autosave settings applied to all private chats without chat-specific
/// settings
@immutable
class AutosaveSettingsScopePrivateChats extends AutosaveSettingsScope {
  const AutosaveSettingsScopePrivateChats();

  static const String constructor = 'autosaveSettingsScopePrivateChats';

  static AutosaveSettingsScopePrivateChats? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const AutosaveSettingsScopePrivateChats();
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
