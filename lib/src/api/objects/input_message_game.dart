import '../tdapi.dart';

/// A message with a game; not supported for channels or secret chats
class InputMessageGame extends InputMessageContent {
  InputMessageGame({required this.botUserId, required this.gameShortName});

  /// [botUserId] User identifier of the bot that owns the game
  final int botUserId;

  /// [gameShortName] Short name of the game
  final String gameShortName;

  static const String CONSTRUCTOR = 'inputMessageGame';

  static InputMessageGame? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageGame(
        botUserId: json['bot_user_id'], gameShortName: json['game_short_name']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'bot_user_id': this.botUserId,
        'game_short_name': this.gameShortName,
        '@type': CONSTRUCTOR
      };
}
