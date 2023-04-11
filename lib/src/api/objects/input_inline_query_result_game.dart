import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a game
@immutable
class InputInlineQueryResultGame extends InputInlineQueryResult {
  const InputInlineQueryResultGame({
    required this.id,
    required this.gameShortName,
    this.replyMarkup,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [gameShortName] Short name of the game
  final String gameShortName;

  /// [replyMarkup] The message reply markup; pass null if none. Must be of type
  /// replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  static const String constructor = 'inputInlineQueryResultGame';

  static InputInlineQueryResultGame? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputInlineQueryResultGame(
      id: json['id'] as String,
      gameShortName: json['game_short_name'] as String,
      replyMarkup:
          ReplyMarkup.fromJson(json['reply_markup'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'game_short_name': gameShortName,
        'reply_markup': replyMarkup?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
