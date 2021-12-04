import '../tdapi.dart';

/// Changes the status of a chat member, needs appropriate privileges. This
/// function is currently not suitable for transferring chat ownership; use
/// transferChatOwnership instead. Use addChatMember or banChatMember if some
/// additional parameters needs to be passed
/// Returns [Ok]
class SetChatMemberStatus extends TdFunction {
  SetChatMemberStatus(
      {required this.chatId, required this.memberId, required this.status});

  /// [chatId] Chat identifier
  final int chatId;

  /// [memberId] Member identifier. Chats can be only banned and unbanned in
  /// supergroups and channels
  final MessageSender memberId;

  /// [status] The new status of the member in the chat
  final ChatMemberStatus status;

  static const String CONSTRUCTOR = 'setChatMemberStatus';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'member_id': this.memberId.toJson(),
        'status': this.status.toJson(),
        '@type': CONSTRUCTOR
      };
}
