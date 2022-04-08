import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sets auto-download settings
/// Returns [Ok]
@immutable
class SetAutoDownloadSettings extends TdFunction {
  const SetAutoDownloadSettings({
    required this.settings,
    required this.type,
  });

  /// [settings] New user auto-download settings
  final AutoDownloadSettings settings;

  /// [type] Type of the network for which the new settings are relevant
  final NetworkType type;

  static const String constructor = 'setAutoDownloadSettings';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'settings': settings.toJson(),
        'type': type.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
