import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to a chat with a Telegram bot. Call searchPublicChat
/// with the given bot username, check that the user is a bot, show START
/// button in the chat with the bot, and then call sendBotStartMessage with
/// the given start parameter after the button is pressed
@immutable
class InternalLinkTypeBotStart extends InternalLinkType {
  const InternalLinkTypeBotStart({
    required this.botUsername,
    required this.startParameter,
    required this.autostart,
  });

  /// [botUsername] Username of the bot
  final String botUsername;

  /// [startParameter] The parameter to be passed to sendBotStartMessage
  final String startParameter;

  /// [autostart] True, if sendBotStartMessage must be called automatically
  /// without showing the START button
  final bool autostart;

  static const String constructor = 'internalLinkTypeBotStart';

  static InternalLinkTypeBotStart? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeBotStart(
      botUsername: json['bot_username'],
      startParameter: json['start_parameter'],
      autostart: json['autostart'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_username': botUsername,
        'start_parameter': startParameter,
        'autostart': autostart,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
