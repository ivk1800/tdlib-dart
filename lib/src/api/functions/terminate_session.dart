import '../tdapi.dart';

/// Terminates a session of the current user
/// Returns [Ok]
class TerminateSession extends TdFunction {
  TerminateSession({required this.sessionId});

  /// [sessionId] Session identifier
  final int sessionId;

  static const String CONSTRUCTOR = 'terminateSession';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'session_id': this.sessionId, '@type': CONSTRUCTOR};
}
