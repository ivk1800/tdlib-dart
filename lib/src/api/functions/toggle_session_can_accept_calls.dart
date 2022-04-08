import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Toggles whether a session can accept incoming calls
/// Returns [Ok]
@immutable
class ToggleSessionCanAcceptCalls extends TdFunction {
  const ToggleSessionCanAcceptCalls({
    required this.sessionId,
    required this.canAcceptCalls,
  });

  /// [sessionId] Session identifier
  final int sessionId;

  /// [canAcceptCalls] True, if incoming calls can be accepted by the session
  final bool canAcceptCalls;

  static const String constructor = 'toggleSessionCanAcceptCalls';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'session_id': sessionId,
        'can_accept_calls': canAcceptCalls,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
