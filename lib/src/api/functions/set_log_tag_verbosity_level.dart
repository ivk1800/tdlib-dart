import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Sets the verbosity level for a specified TDLib internal log tag. Can be
/// called synchronously
/// Returns [Ok]
class SetLogTagVerbosityLevel extends TdFunction {
  SetLogTagVerbosityLevel({required this.tag, required this.newVerbosityLevel});

  /// [tag] Logging tag to change verbosity level
  final String tag;

  /// [newVerbosityLevel] New verbosity level; 1-1024
  final int newVerbosityLevel;

  static const String CONSTRUCTOR = 'setLogTagVerbosityLevel';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'tag': this.tag,
        'new_verbosity_level': this.newVerbosityLevel,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
