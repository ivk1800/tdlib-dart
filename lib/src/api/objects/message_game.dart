import '../tdapi.dart';

/// A message with a game
class MessageGame extends MessageContent {
  MessageGame({required this.game});

  /// [game] The game description
  final Game game;

  static const String CONSTRUCTOR = 'messageGame';

  static MessageGame? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageGame(game: Game.fromJson(json['game'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'game': this.game.toJson(), '@type': CONSTRUCTOR};
}
