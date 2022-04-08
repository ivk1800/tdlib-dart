import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of game high scores
@immutable
class GameHighScores extends TdObject {
  const GameHighScores({
    required this.scores,
  });

  /// [scores] A list of game high scores
  final List<GameHighScore> scores;

  static const String constructor = 'gameHighScores';

  static GameHighScores? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GameHighScores(
      scores: List<GameHighScore>.from((json['scores'] ?? [])
          .map((item) => GameHighScore.fromJson(item))
          .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'scores': scores.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
