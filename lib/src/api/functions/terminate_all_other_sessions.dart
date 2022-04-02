import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Terminates all other sessions of the current user
/// Returns [Ok]
class TerminateAllOtherSessions extends TdFunction {
  TerminateAllOtherSessions();

  static const String CONSTRUCTOR = 'terminateAllOtherSessions';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
