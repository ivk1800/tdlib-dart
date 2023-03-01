import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Clears the list of all autosave settings exceptions. The method is
/// guaranteed to work only after at least one call to getAutosaveSettings
/// Returns [Ok]
@immutable
class ClearAutosaveSettingsExceptions extends TdFunction {
  const ClearAutosaveSettingsExceptions();

  static const String constructor = 'clearAutosaveSettingsExceptions';

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
