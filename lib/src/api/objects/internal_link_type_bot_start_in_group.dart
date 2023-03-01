import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to a Telegram bot, which is supposed to be added to a
/// group chat. Call searchPublicChat with the given bot username, check that
/// the user is a bot and can be added to groups, ask the current user to
/// select a basic group or a supergroup chat to add the bot to, taking into
/// account that bots can be added to a public supergroup only by
/// administrators of the supergroup. If administrator rights are provided by
/// the link, call getChatMember to receive the current bot rights in the chat
/// and if the bot already is an administrator, check that the current user
/// can edit its administrator rights, combine received rights with the
/// requested administrator rights, show confirmation box to the user, and
/// call setChatMemberStatus with the chosen chat and confirmed administrator
/// rights. Before call to setChatMemberStatus it may be required to upgrade
/// the chosen basic group chat to a supergroup chat. Then, if start_parameter
/// isn't empty, call sendBotStartMessage with the given start parameter and
/// the chosen chat; otherwise, just send /start message with bot's username
/// added to the chat.
@immutable
class InternalLinkTypeBotStartInGroup extends InternalLinkType {
  const InternalLinkTypeBotStartInGroup({
    required this.botUsername,
    required this.startParameter,
    this.administratorRights,
  });

  /// [botUsername] Username of the bot
  final String botUsername;

  /// [startParameter] The parameter to be passed to sendBotStartMessage
  final String startParameter;

  /// [administratorRights] Expected administrator rights for the bot; may be
  /// null
  final ChatAdministratorRights? administratorRights;

  static const String constructor = 'internalLinkTypeBotStartInGroup';

  static InternalLinkTypeBotStartInGroup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeBotStartInGroup(
      botUsername: json['bot_username'],
      startParameter: json['start_parameter'],
      administratorRights:
          ChatAdministratorRights.fromJson(json['administrator_rights']),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_username': botUsername,
        'start_parameter': startParameter,
        'administrator_rights': administratorRights?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
