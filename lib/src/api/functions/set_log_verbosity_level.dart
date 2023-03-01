import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sets the verbosity level of the internal logging of TDLib. Can be called
/// synchronously
/// Returns [Ok]
@immutable
class SetLogVerbosityLevel extends TdFunction {
  const SetLogVerbosityLevel({
    required this.newVerbosityLevel,
  });

  /// [newVerbosityLevel] New value of the verbosity level for logging. Value 0
  /// corresponds to fatal errors, value 1 corresponds to errors, value 2
  /// corresponds to warnings and debug warnings, value 3 corresponds to
  /// informational, value 4 corresponds to debug, value 5 corresponds to
  /// verbose debug, value greater than 5 and up to 1023 can be used to enable
  /// even more logging
  final int newVerbosityLevel;

  static const String constructor = 'setLogVerbosityLevel';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'new_verbosity_level': newVerbosityLevel,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
