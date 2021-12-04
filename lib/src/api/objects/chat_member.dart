import '../tdapi.dart';

/// Describes a user or a chat as a member of another chat
class ChatMember extends TdObject {
  ChatMember(
      {required this.memberId,
      required this.inviterUserId,
      required this.joinedChatDate,
      required this.status});

  /// [memberId] Identifier of the chat member. Currently, other chats can be
  /// only Left or Banned. Only supergroups and channels can have other chats as
  /// Left or Banned members and these chats must be supergroups or channels
  final MessageSender memberId;

  /// [inviterUserId] Identifier of a user that invited/promoted/banned this
  /// member in the chat; 0 if unknown
  final int inviterUserId;

  /// [joinedChatDate] Point in time (Unix timestamp) when the user joined the
  /// chat
  final int joinedChatDate;

  /// [status] Status of the member in the chat
  final ChatMemberStatus status;

  static const String CONSTRUCTOR = 'chatMember';

  static ChatMember? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatMember(
        memberId: MessageSender.fromJson(json['member_id'])!,
        inviterUserId: json['inviter_user_id'],
        joinedChatDate: json['joined_chat_date'],
        status: ChatMemberStatus.fromJson(json['status'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'member_id': this.memberId.toJson(),
        'inviter_user_id': this.inviterUserId,
        'joined_chat_date': this.joinedChatDate,
        'status': this.status.toJson(),
        '@type': CONSTRUCTOR
      };
}
