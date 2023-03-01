import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns autosave settings for the current user
/// Returns [AutosaveSettings]
@immutable
class GetAutosaveSettings extends TdFunction {
  const GetAutosaveSettings();

  static const String constructor = 'getAutosaveSettings';

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
