import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A button that requests a chat to be shared by the current user; available
/// only in private chats. Use the method shareChatWithBot to complete the
/// request
@immutable
class KeyboardButtonTypeRequestChat extends KeyboardButtonType {
  const KeyboardButtonTypeRequestChat({
    required this.id,
    required this.chatIsChannel,
    required this.restrictChatIsForum,
    required this.chatIsForum,
    required this.restrictChatHasUsername,
    required this.chatHasUsername,
    required this.chatIsCreated,
    this.userAdministratorRights,
    this.botAdministratorRights,
    required this.botIsMember,
  });

  /// [id] Unique button identifier
  final int id;

  /// [chatIsChannel] True, if the chat must be a channel; otherwise, a basic
  /// group or a supergroup chat is shared
  final bool chatIsChannel;

  /// [restrictChatIsForum] True, if the chat must or must not be a forum
  /// supergroup
  final bool restrictChatIsForum;

  /// [chatIsForum] True, if the chat must be a forum supergroup; otherwise, the
  /// chat must not be a forum supergroup. Ignored if restrict_chat_is_forum is
  /// false
  final bool chatIsForum;

  /// [restrictChatHasUsername] True, if the chat must or must not have a
  /// username
  final bool restrictChatHasUsername;

  /// [chatHasUsername] True, if the chat must have a username; otherwise, the
  /// chat must not have a username. Ignored if restrict_chat_has_username is
  /// false
  final bool chatHasUsername;

  /// [chatIsCreated] True, if the chat must be created by the current user
  final bool chatIsCreated;

  /// [userAdministratorRights] Expected user administrator rights in the chat;
  /// may be null if they aren't restricted
  final ChatAdministratorRights? userAdministratorRights;

  /// [botAdministratorRights] Expected bot administrator rights in the chat;
  /// may be null if they aren't restricted
  final ChatAdministratorRights? botAdministratorRights;

  /// [botIsMember] True, if the bot must be a member of the chat; for basic
  /// group and supergroup chats only
  final bool botIsMember;

  static const String constructor = 'keyboardButtonTypeRequestChat';

  static KeyboardButtonTypeRequestChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return KeyboardButtonTypeRequestChat(
      id: json['id'] as int,
      chatIsChannel: json['chat_is_channel'] as bool,
      restrictChatIsForum: json['restrict_chat_is_forum'] as bool,
      chatIsForum: json['chat_is_forum'] as bool,
      restrictChatHasUsername: json['restrict_chat_has_username'] as bool,
      chatHasUsername: json['chat_has_username'] as bool,
      chatIsCreated: json['chat_is_created'] as bool,
      userAdministratorRights: ChatAdministratorRights.fromJson(
          json['user_administrator_rights'] as Map<String, dynamic>?),
      botAdministratorRights: ChatAdministratorRights.fromJson(
          json['bot_administrator_rights'] as Map<String, dynamic>?),
      botIsMember: json['bot_is_member'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'chat_is_channel': chatIsChannel,
        'restrict_chat_is_forum': restrictChatIsForum,
        'chat_is_forum': chatIsForum,
        'restrict_chat_has_username': restrictChatHasUsername,
        'chat_has_username': chatHasUsername,
        'chat_is_created': chatIsCreated,
        'user_administrator_rights': userAdministratorRights?.toJson(),
        'bot_administrator_rights': botAdministratorRights?.toJson(),
        'bot_is_member': botIsMember,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
