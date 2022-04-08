import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents information about a game
@immutable
class InlineQueryResultGame extends InlineQueryResult {
  const InlineQueryResultGame({
    required this.id,
    required this.game,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [game] Game result
  final Game game;

  static const String constructor = 'inlineQueryResultGame';

  static InlineQueryResultGame? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultGame(
      id: json['id'],
      game: Game.fromJson(json['game'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'game': game.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
