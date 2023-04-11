import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to a Telegram bot, which is supposed to be added to a
/// channel chat as an administrator. Call searchPublicChat with the given bot
/// username and check that the user is a bot, ask the current user to select
/// a channel chat to add the bot to as an administrator. Then, call
/// getChatMember to receive the current bot rights in the chat and if the bot
/// already is an administrator, check that the current user can edit its
/// administrator rights and combine received rights with the requested
/// administrator rights. Then, show confirmation box to the user, and call
/// setChatMemberStatus with the chosen chat and confirmed rights
@immutable
class InternalLinkTypeBotAddToChannel extends InternalLinkType {
  const InternalLinkTypeBotAddToChannel({
    required this.botUsername,
    required this.administratorRights,
  });

  /// [botUsername] Username of the bot
  final String botUsername;

  /// [administratorRights] Expected administrator rights for the bot
  final ChatAdministratorRights administratorRights;

  static const String constructor = 'internalLinkTypeBotAddToChannel';

  static InternalLinkTypeBotAddToChannel? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeBotAddToChannel(
      botUsername: json['bot_username'] as String,
      administratorRights: ChatAdministratorRights.fromJson(
          json['administrator_rights'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_username': botUsername,
        'administrator_rights': administratorRights.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
