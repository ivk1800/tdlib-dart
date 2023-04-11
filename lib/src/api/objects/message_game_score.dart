import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A new high score was achieved in a game
@immutable
class MessageGameScore extends MessageContent {
  const MessageGameScore({
    required this.gameMessageId,
    required this.gameId,
    required this.score,
  });

  /// [gameMessageId] Identifier of the message with the game, can be an
  /// identifier of a deleted message
  final int gameMessageId;

  /// [gameId] Identifier of the game; may be different from the games presented
  /// in the message with the game
  final int gameId;

  /// [score] New score
  final int score;

  static const String constructor = 'messageGameScore';

  static MessageGameScore? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageGameScore(
      gameMessageId: json['game_message_id'] as int,
      gameId: int.tryParse(json['game_id']) ?? 0,
      score: json['score'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'game_message_id': gameMessageId,
        'game_id': gameId,
        'score': score,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
