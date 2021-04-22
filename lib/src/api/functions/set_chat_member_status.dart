import '../tdapi.dart';

/// Changes the status of a chat member, needs appropriate privileges. This
/// function is currently not suitable for adding new members to the chat and
/// transferring chat ownership; instead, use addChatMember or
/// transferChatOwnership
/// Returns [Ok]
class SetChatMemberStatus extends TdFunction {
  SetChatMemberStatus(
      {required this.chatId, required this.userId, required this.status});

  /// [chatId] Chat identifier
  final int chatId;

  /// [userId] User identifier
  final int userId;

  /// [status] The new status of the member in the chat
  final ChatMemberStatus status;

  static const String CONSTRUCTOR = 'setChatMemberStatus';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'user_id': this.userId,
        'status': this.status.toJson(),
        '@type': CONSTRUCTOR
      };
}
