import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to a Telegram bot, which is supposed to be added to a
/// group chat. Call searchPublicChat with the given bot username, check that
/// the user is a bot and can be added to groups,. ask the current user to
/// select a group to add the bot to, and then call sendBotStartMessage with
/// the given start parameter and the chosen group chat. Bots can be added to
/// a public group only by administrators of the group
@immutable
class InternalLinkTypeBotStartInGroup extends InternalLinkType {
  const InternalLinkTypeBotStartInGroup({
    required this.botUsername,
    required this.startParameter,
  });

  /// [botUsername] Username of the bot
  final String botUsername;

  /// [startParameter] The parameter to be passed to sendBotStartMessage
  final String startParameter;

  static const String constructor = 'internalLinkTypeBotStartInGroup';

  static InternalLinkTypeBotStartInGroup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeBotStartInGroup(
      botUsername: json['bot_username'],
      startParameter: json['start_parameter'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_username': botUsername,
        'start_parameter': startParameter,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
