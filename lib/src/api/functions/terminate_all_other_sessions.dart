import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Terminates all other sessions of the current user
/// Returns [Ok]
@immutable
class TerminateAllOtherSessions extends TdFunction {
  const TerminateAllOtherSessions();

  static const String constructor = 'terminateAllOtherSessions';

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
