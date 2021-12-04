import '../tdapi.dart';

/// Updates the game score of the specified user in a game; for bots only
/// Returns [Ok]
class SetInlineGameScore extends TdFunction {
  SetInlineGameScore(
      {required this.inlineMessageId,
      required this.editMessage,
      required this.userId,
      required this.score,
      required this.force});

  /// [inlineMessageId] Inline message identifier
  final String inlineMessageId;

  /// [editMessage] True, if the message needs to be edited
  final bool editMessage;

  /// [userId] User identifier
  final int userId;

  /// [score] The new score
  final int score;

  /// [force] Pass true to update the score even if it decreases. If the score
  /// is 0, the user will be deleted from the high score table
  final bool force;

  static const String CONSTRUCTOR = 'setInlineGameScore';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'inline_message_id': this.inlineMessageId,
        'edit_message': this.editMessage,
        'user_id': this.userId,
        'score': this.score,
        'force': this.force,
        '@type': CONSTRUCTOR
      };
}
