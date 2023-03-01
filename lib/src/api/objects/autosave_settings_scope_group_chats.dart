import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Autosave settings applied to all basic group and supergroup chats without
/// chat-specific settings
@immutable
class AutosaveSettingsScopeGroupChats extends AutosaveSettingsScope {
  const AutosaveSettingsScopeGroupChats();

  static const String constructor = 'autosaveSettingsScopeGroupChats';

  static AutosaveSettingsScopeGroupChats? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const AutosaveSettingsScopeGroupChats();
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
