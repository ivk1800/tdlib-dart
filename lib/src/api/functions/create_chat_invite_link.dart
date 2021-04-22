import '../tdapi.dart';

/// Creates a new invite link for a chat. Available for basic groups,
/// supergroups, and channels. Requires administrator privileges and
/// can_invite_users right in the chat
/// Returns [ChatInviteLink]
class CreateChatInviteLink extends TdFunction {
  CreateChatInviteLink(
      {required this.chatId,
      required this.expireDate,
      required this.memberLimit});

  /// [chatId] Chat identifier
  final int chatId;

  /// [expireDate] Point in time (Unix timestamp) when the link will expire;
  /// pass 0 if never
  final int expireDate;

  /// [memberLimit] Maximum number of chat members that can join the chat by the
  /// link simultaneously; 0-99999; pass 0 if not limited
  final int memberLimit;

  static const String CONSTRUCTOR = 'createChatInviteLink';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'expire_date': this.expireDate,
        'member_limit': this.memberLimit,
        '@type': CONSTRUCTOR
      };
}
