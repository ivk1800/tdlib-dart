import '../tdapi.dart';

/// Represents information about a game
class InlineQueryResultGame extends InlineQueryResult {
  InlineQueryResultGame({required this.id, required this.game});

  /// [id] Unique identifier of the query result
  final String id;

  /// [game] Game result
  final Game game;

  static const String CONSTRUCTOR = 'inlineQueryResultGame';

  static InlineQueryResultGame? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultGame(
        id: json['id'], game: Game.fromJson(json['game'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'id': this.id, 'game': this.game.toJson(), '@type': CONSTRUCTOR};
}
