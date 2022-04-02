import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns list of available TDLib internal log tags, for example,
/// Returns [LogTags]
class GetLogTags extends TdFunction {
  GetLogTags();

  static const String CONSTRUCTOR = 'getLogTags';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
