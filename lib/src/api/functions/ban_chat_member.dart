import '../tdapi.dart';

/// Bans a member in a chat. Members can't be banned in private or secret
/// chats. In supergroups and channels, the user will not be able to return to
/// the group on their own using invite links, etc., unless unbanned first
/// Returns [Ok]
class BanChatMember extends TdFunction {
  BanChatMember(
      {required this.chatId,
      required this.userId,
      required this.bannedUntilDate,
      required this.revokeMessages});

  /// [chatId] Chat identifier
  final int chatId;

  /// [userId] Identifier of the user
  final int userId;

  /// [bannedUntilDate] Point in time (Unix timestamp) when the user will be
  /// unbanned; 0 if never. If the user is banned for more than 366 days or for
  /// less than 30 seconds from the current time, the user is considered to be
  /// banned forever. Ignored in basic groups
  final int bannedUntilDate;

  /// [revokeMessages] Pass true to delete all messages in the chat for the
  /// user. Always true for supergroups and channels
  final bool revokeMessages;

  static const String CONSTRUCTOR = 'banChatMember';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'user_id': this.userId,
        'banned_until_date': this.bannedUntilDate,
        'revoke_messages': this.revokeMessages,
        '@type': CONSTRUCTOR
      };
}
