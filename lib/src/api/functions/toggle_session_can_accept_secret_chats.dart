import '../tdapi.dart';

/// Toggles whether a session can accept incoming secret chats
/// Returns [Ok]
class ToggleSessionCanAcceptSecretChats extends TdFunction {
  ToggleSessionCanAcceptSecretChats(
      {required this.sessionId, required this.canAcceptSecretChats});

  /// [sessionId] Session identifier
  final int sessionId;

  /// [canAcceptSecretChats] True, if incoming secret chats can be accepted by
  /// the session
  final bool canAcceptSecretChats;

  static const String CONSTRUCTOR = 'toggleSessionCanAcceptSecretChats';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'session_id': this.sessionId,
        'can_accept_secret_chats': this.canAcceptSecretChats,
        '@type': CONSTRUCTOR
      };
}
