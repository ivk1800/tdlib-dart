import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns current verbosity level for a specified TDLib internal log tag.
/// Can be called synchronously
/// Returns [LogVerbosityLevel]
@immutable
class GetLogTagVerbosityLevel extends TdFunction {
  const GetLogTagVerbosityLevel({
    required this.tag,
  });

  /// [tag] Logging tag to change verbosity level
  final String tag;

  static const String constructor = 'getLogTagVerbosityLevel';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'tag': tag,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
