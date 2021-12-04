import '../tdapi.dart';

/// Represents a game
class InputInlineQueryResultGame extends InputInlineQueryResult {
  InputInlineQueryResultGame(
      {required this.id, required this.gameShortName, this.replyMarkup});

  /// [id] Unique identifier of the query result
  final String id;

  /// [gameShortName] Short name of the game
  final String gameShortName;

  /// [replyMarkup] The message reply markup; pass null if none. Must be of type
  /// replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  static const String CONSTRUCTOR = 'inputInlineQueryResultGame';

  static InputInlineQueryResultGame? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputInlineQueryResultGame(
        id: json['id'],
        gameShortName: json['game_short_name'],
        replyMarkup: ReplyMarkup.fromJson(json['reply_markup']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'game_short_name': this.gameShortName,
        'reply_markup': this.replyMarkup?.toJson(),
        '@type': CONSTRUCTOR
      };
}
