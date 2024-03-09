import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the status of a chat member; requires can_invite_users member
/// right to add a chat member, can_promote_members administrator right to
/// change administrator rights of the member, and can_restrict_members
/// administrator right to change restrictions of a user. This function is
/// currently not suitable for transferring chat ownership; use
/// transferChatOwnership instead. Use addChatMember or banChatMember if some
/// additional parameters needs to be passed
/// Returns [Ok]
@immutable
class SetChatMemberStatus extends TdFunction {
  const SetChatMemberStatus({
    required this.chatId,
    required this.memberId,
    required this.status,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [memberId] Member identifier. Chats can be only banned and unbanned in
  /// supergroups and channels
  final MessageSender memberId;

  /// [status] The new status of the member in the chat
  final ChatMemberStatus status;

  static const String constructor = 'setChatMemberStatus';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'member_id': memberId.toJson(),
        'status': status.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
