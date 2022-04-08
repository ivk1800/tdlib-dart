import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains auto-download settings presets for the current user
@immutable
class AutoDownloadSettingsPresets extends TdObject {
  const AutoDownloadSettingsPresets({
    required this.low,
    required this.medium,
    required this.high,
  });

  /// [low] Preset with lowest settings; supposed to be used by default when
  /// roaming
  final AutoDownloadSettings low;

  /// [medium] Preset with medium settings; supposed to be used by default when
  /// using mobile data
  final AutoDownloadSettings medium;

  /// [high] Preset with highest settings; supposed to be used by default when
  /// connected on Wi-Fi
  final AutoDownloadSettings high;

  static const String constructor = 'autoDownloadSettingsPresets';

  static AutoDownloadSettingsPresets? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AutoDownloadSettingsPresets(
      low: AutoDownloadSettings.fromJson(json['low'])!,
      medium: AutoDownloadSettings.fromJson(json['medium'])!,
      high: AutoDownloadSettings.fromJson(json['high'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'low': low.toJson(),
        'medium': medium.toJson(),
        'high': high.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
