import '../tdapi.dart';

/// Returns game high scores and some part of the high score table in the
/// range of the specified user; for bots only
/// Returns [GameHighScores]
class GetInlineGameHighScores extends TdFunction {
  GetInlineGameHighScores(
      {required this.inlineMessageId, required this.userId});

  /// [inlineMessageId] Inline message identifier
  final String inlineMessageId;

  /// [userId] User identifier
  final int userId;

  static const String CONSTRUCTOR = 'getInlineGameHighScores';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'inline_message_id': this.inlineMessageId,
        'user_id': this.userId,
        '@type': CONSTRUCTOR
      };
}
