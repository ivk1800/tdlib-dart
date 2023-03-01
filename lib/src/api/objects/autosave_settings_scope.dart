import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes scope of autosave settings
@immutable
abstract class AutosaveSettingsScope extends TdObject {
  const AutosaveSettingsScope();

  static const String constructor = 'autosaveSettingsScope';

  /// Inherited by:
  /// [AutosaveSettingsScopeChannelChats]
  /// [AutosaveSettingsScopeChat]
  /// [AutosaveSettingsScopeGroupChats]
  /// [AutosaveSettingsScopePrivateChats]
  static AutosaveSettingsScope? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case AutosaveSettingsScopeChannelChats.constructor:
        return AutosaveSettingsScopeChannelChats.fromJson(json);
      case AutosaveSettingsScopeChat.constructor:
        return AutosaveSettingsScopeChat.fromJson(json);
      case AutosaveSettingsScopeGroupChats.constructor:
        return AutosaveSettingsScopeGroupChats.fromJson(json);
      case AutosaveSettingsScopePrivateChats.constructor:
        return AutosaveSettingsScopePrivateChats.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
