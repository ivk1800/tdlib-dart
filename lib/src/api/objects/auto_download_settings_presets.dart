import '../tdapi.dart';

/// Contains auto-download settings presets for the current user
class AutoDownloadSettingsPresets extends TdObject {
  AutoDownloadSettingsPresets(
      {required this.low, required this.medium, required this.high});

  /// [low] Preset with lowest settings; supposed to be used by default when
  /// roaming
  final AutoDownloadSettings low;

  /// [medium] Preset with medium settings; supposed to be used by default when
  /// using mobile data
  final AutoDownloadSettings medium;

  /// [high] Preset with highest settings; supposed to be used by default when
  /// connected on Wi-Fi
  final AutoDownloadSettings high;

  static const String CONSTRUCTOR = 'autoDownloadSettingsPresets';

  static AutoDownloadSettingsPresets? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AutoDownloadSettingsPresets(
        low: AutoDownloadSettings.fromJson(json['low'])!,
        medium: AutoDownloadSettings.fromJson(json['medium'])!,
        high: AutoDownloadSettings.fromJson(json['high'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'low': this.low.toJson(),
        'medium': this.medium.toJson(),
        'high': this.high.toJson(),
        '@type': CONSTRUCTOR
      };
}
