import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A new high score was achieved in a game
class MessageGameScore extends MessageContent {
  MessageGameScore(
      {required this.gameMessageId, required this.gameId, required this.score});

  /// [gameMessageId] Identifier of the message with the game, can be an
  /// identifier of a deleted message
  final int gameMessageId;

  /// [gameId] Identifier of the game; may be different from the games presented
  /// in the message with the game
  final int gameId;

  /// [score] New score
  final int score;

  static const String CONSTRUCTOR = 'messageGameScore';

  static MessageGameScore? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageGameScore(
        gameMessageId: json['game_message_id'],
        gameId: int.tryParse(json['game_id']) ?? 0,
        score: json['score']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'game_message_id': this.gameMessageId,
        'game_id': this.gameId,
        'score': this.score,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
