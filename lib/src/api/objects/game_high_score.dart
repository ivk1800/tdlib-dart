import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Contains one row of the game high score table
class GameHighScore extends TdObject {
  GameHighScore(
      {required this.position, required this.userId, required this.score});

  /// [position] Position in the high score table
  final int position;

  /// [userId] User identifier
  final int userId;

  /// [score] User score
  final int score;

  static const String CONSTRUCTOR = 'gameHighScore';

  static GameHighScore? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GameHighScore(
        position: json['position'],
        userId: json['user_id'],
        score: json['score']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'position': this.position,
        'user_id': this.userId,
        'score': this.score,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
