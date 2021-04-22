import '../tdapi.dart';

/// Returns list of available TDLib internal log tags, for example,
/// Returns [LogTags]
class GetLogTags extends TdFunction {
  GetLogTags();

  static const String CONSTRUCTOR = 'getLogTags';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
