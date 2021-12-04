import '../tdapi.dart';

/// Sets auto-download settings
/// Returns [Ok]
class SetAutoDownloadSettings extends TdFunction {
  SetAutoDownloadSettings({required this.settings, required this.type});

  /// [settings] New user auto-download settings
  final AutoDownloadSettings settings;

  /// [type] Type of the network for which the new settings are relevant
  final NetworkType type;

  static const String CONSTRUCTOR = 'setAutoDownloadSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'settings': this.settings.toJson(),
        'type': this.type.toJson(),
        '@type': CONSTRUCTOR
      };
}
