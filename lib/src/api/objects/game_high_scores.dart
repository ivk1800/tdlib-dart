import '../tdapi.dart';

/// Contains a list of game high scores
class GameHighScores extends TdObject {
  GameHighScores({required this.scores});

  /// [scores] A list of game high scores
  final List<GameHighScore> scores;

  static const String CONSTRUCTOR = 'gameHighScores';

  static GameHighScores? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GameHighScores(
        scores: List<GameHighScore>.from((json['scores'] ?? [])
            .map((item) => GameHighScore.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'scores': scores.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };
}
