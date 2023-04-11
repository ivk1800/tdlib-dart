import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Autosave settings for some type of chats were updated
@immutable
class UpdateAutosaveSettings extends Update {
  const UpdateAutosaveSettings({
    required this.scope,
    this.settings,
  });

  /// [scope] Type of chats for which autosave settings were updated
  final AutosaveSettingsScope scope;

  /// [settings] The new autosave settings; may be null if the settings are
  /// reset to default
  final ScopeAutosaveSettings? settings;

  static const String constructor = 'updateAutosaveSettings';

  static UpdateAutosaveSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateAutosaveSettings(
      scope: AutosaveSettingsScope.fromJson(
          json['scope'] as Map<String, dynamic>?)!,
      settings: ScopeAutosaveSettings.fromJson(
          json['settings'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'scope': scope.toJson(),
        'settings': settings?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
