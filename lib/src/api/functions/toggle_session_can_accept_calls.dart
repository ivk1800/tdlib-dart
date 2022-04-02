import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Toggles whether a session can accept incoming calls
/// Returns [Ok]
class ToggleSessionCanAcceptCalls extends TdFunction {
  ToggleSessionCanAcceptCalls(
      {required this.sessionId, required this.canAcceptCalls});

  /// [sessionId] Session identifier
  final int sessionId;

  /// [canAcceptCalls] True, if incoming calls can be accepted by the session
  final bool canAcceptCalls;

  static const String CONSTRUCTOR = 'toggleSessionCanAcceptCalls';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'session_id': this.sessionId,
        'can_accept_calls': this.canAcceptCalls,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
