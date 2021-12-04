import '../tdapi.dart';

/// Updates the game score of the specified user in the game; for bots only
/// Returns [Message]
class SetGameScore extends TdFunction {
  SetGameScore(
      {required this.chatId,
      required this.messageId,
      required this.editMessage,
      required this.userId,
      required this.score,
      required this.force});

  /// [chatId] The chat to which the message with the game belongs
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [editMessage] True, if the message needs to be edited
  final bool editMessage;

  /// [userId] User identifier
  final int userId;

  /// [score] The new score
  final int score;

  /// [force] Pass true to update the score even if it decreases. If the score
  /// is 0, the user will be deleted from the high score table
  final bool force;

  static const String CONSTRUCTOR = 'setGameScore';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        'edit_message': this.editMessage,
        'user_id': this.userId,
        'score': this.score,
        'force': this.force,
        '@type': CONSTRUCTOR
      };
}
