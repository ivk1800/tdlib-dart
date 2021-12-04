import '../tdapi.dart';

/// The link is a link to a chat with a Telegram bot. Call searchPublicChat
/// with the given bot username, check that the user is a bot, show START
/// button in the chat with the bot,. and then call sendBotStartMessage with
/// the given start parameter after the button is pressed
class InternalLinkTypeBotStart extends InternalLinkType {
  InternalLinkTypeBotStart(
      {required this.botUsername, required this.startParameter});

  /// [botUsername] Username of the bot
  final String botUsername;

  /// [startParameter] The parameter to be passed to sendBotStartMessage
  final String startParameter;

  static const String CONSTRUCTOR = 'internalLinkTypeBotStart';

  static InternalLinkTypeBotStart? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeBotStart(
        botUsername: json['bot_username'],
        startParameter: json['start_parameter']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'bot_username': this.botUsername,
        'start_parameter': this.startParameter,
        '@type': CONSTRUCTOR
      };
}
