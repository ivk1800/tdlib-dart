import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains one row of the game high score table
@immutable
class GameHighScore extends TdObject {
  const GameHighScore({
    required this.position,
    required this.userId,
    required this.score,
  });

  /// [position] Position in the high score table
  final int position;

  /// [userId] User identifier
  final int userId;

  /// [score] User score
  final int score;

  static const String constructor = 'gameHighScore';

  static GameHighScore? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GameHighScore(
      position: json['position'] as int,
      userId: json['user_id'] as int,
      score: json['score'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'position': position,
        'user_id': userId,
        'score': score,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
