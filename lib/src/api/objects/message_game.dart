import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A message with a game
@immutable
class MessageGame extends MessageContent {
  const MessageGame({
    required this.game,
  });

  /// [game] The game description
  final Game game;

  static const String constructor = 'messageGame';

  static MessageGame? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageGame(
      game: Game.fromJson(json['game'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'game': game.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
