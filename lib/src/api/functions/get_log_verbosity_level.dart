import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns current verbosity level of the internal logging of TDLib. Can be
/// called synchronously
/// Returns [LogVerbosityLevel]
@immutable
class GetLogVerbosityLevel extends TdFunction {
  const GetLogVerbosityLevel();

  static const String constructor = 'getLogVerbosityLevel';

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
