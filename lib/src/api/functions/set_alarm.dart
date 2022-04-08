import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Succeeds after a specified amount of time has passed. Can be called before
/// initialization
/// Returns [Ok]
@immutable
class SetAlarm extends TdFunction {
  const SetAlarm({
    required this.seconds,
  });

  /// [seconds] Number of seconds before the function returns
  final double seconds;

  static const String constructor = 'setAlarm';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'seconds': seconds,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
