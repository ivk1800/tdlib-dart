import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns auto-download settings presets for the current user
/// Returns [AutoDownloadSettingsPresets]
class GetAutoDownloadSettingsPresets extends TdFunction {
  GetAutoDownloadSettingsPresets();

  static const String CONSTRUCTOR = 'getAutoDownloadSettingsPresets';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
