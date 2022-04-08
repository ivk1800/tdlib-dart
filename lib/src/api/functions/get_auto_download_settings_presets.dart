import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns auto-download settings presets for the current user
/// Returns [AutoDownloadSettingsPresets]
@immutable
class GetAutoDownloadSettingsPresets extends TdFunction {
  const GetAutoDownloadSettingsPresets();

  static const String constructor = 'getAutoDownloadSettingsPresets';

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
