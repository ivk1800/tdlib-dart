import '../tdapi.dart';

/// Returns auto-download settings presets for the current user
/// Returns [AutoDownloadSettingsPresets]
class GetAutoDownloadSettingsPresets extends TdFunction {
  GetAutoDownloadSettingsPresets();

  static const String CONSTRUCTOR = 'getAutoDownloadSettingsPresets';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
