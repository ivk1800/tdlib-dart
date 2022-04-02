import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The link is a link to a game. Call searchPublicChat with the given bot
/// username, check that the user is a bot, ask the current user to select a
/// chat to send the game, and then call sendMessage with inputMessageGame
class InternalLinkTypeGame extends InternalLinkType {
  InternalLinkTypeGame(
      {required this.botUsername, required this.gameShortName});

  /// [botUsername] Username of the bot that owns the game
  final String botUsername;

  /// [gameShortName] Short name of the game
  final String gameShortName;

  static const String CONSTRUCTOR = 'internalLinkTypeGame';

  static InternalLinkTypeGame? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeGame(
        botUsername: json['bot_username'],
        gameShortName: json['game_short_name']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'bot_username': this.botUsername,
        'game_short_name': this.gameShortName,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
