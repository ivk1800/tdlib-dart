import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sets the verbosity level for a specified TDLib internal log tag. Can be
/// called synchronously
/// Returns [Ok]
@immutable
class SetLogTagVerbosityLevel extends TdFunction {
  const SetLogTagVerbosityLevel({
    required this.tag,
    required this.newVerbosityLevel,
  });

  /// [tag] Logging tag to change verbosity level
  final String tag;

  /// [newVerbosityLevel] New verbosity level; 1-1024
  final int newVerbosityLevel;

  static const String constructor = 'setLogTagVerbosityLevel';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'tag': tag,
        'new_verbosity_level': newVerbosityLevel,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
