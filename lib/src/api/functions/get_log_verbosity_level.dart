import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns current verbosity level of the internal logging of TDLib. Can be
/// called synchronously
/// Returns [LogVerbosityLevel]
class GetLogVerbosityLevel extends TdFunction {
  GetLogVerbosityLevel();

  static const String CONSTRUCTOR = 'getLogVerbosityLevel';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
