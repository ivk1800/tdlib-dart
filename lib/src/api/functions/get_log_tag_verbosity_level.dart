import '../tdapi.dart';

/// Returns current verbosity level for a specified TDLib internal log tag.
/// Can be called synchronously
/// Returns [LogVerbosityLevel]
class GetLogTagVerbosityLevel extends TdFunction {
  GetLogTagVerbosityLevel({required this.tag});

  /// [tag] Logging tag to change verbosity level
  final String tag;

  static const String CONSTRUCTOR = 'getLogTagVerbosityLevel';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'tag': this.tag, '@type': CONSTRUCTOR};
}
