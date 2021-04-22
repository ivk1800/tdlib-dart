import '../tdapi.dart';

/// A user with information about joining/leaving a chat
class ChatMember extends TdObject {
  ChatMember(
      {required this.userId,
      required this.inviterUserId,
      required this.joinedChatDate,
      required this.status,
      this.botInfo});

  /// [userId] User identifier of the chat member
  final int userId;

  /// [inviterUserId] Identifier of a user that invited/promoted/banned this
  /// member in the chat; 0 if unknown
  final int inviterUserId;

  /// [joinedChatDate] Point in time (Unix timestamp) when the user joined the
  /// chat
  final int joinedChatDate;

  /// [status] Status of the member in the chat
  final ChatMemberStatus status;

  /// [botInfo] If the user is a bot, information about the bot; may be null.
  /// Can be null even for a bot if the bot is not the chat member
  final BotInfo? botInfo;

  static const String CONSTRUCTOR = 'chatMember';

  static ChatMember? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatMember(
        userId: json['user_id'],
        inviterUserId: json['inviter_user_id'],
        joinedChatDate: json['joined_chat_date'],
        status: ChatMemberStatus.fromJson(json['status'])!,
        botInfo: BotInfo.fromJson(json['bot_info']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'user_id': this.userId,
        'inviter_user_id': this.inviterUserId,
        'joined_chat_date': this.joinedChatDate,
        'status': this.status.toJson(),
        'bot_info': this.botInfo?.toJson(),
        '@type': CONSTRUCTOR
      };
}
