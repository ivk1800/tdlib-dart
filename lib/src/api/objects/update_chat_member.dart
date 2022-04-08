import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// User rights changed in a chat; for bots only
@immutable
class UpdateChatMember extends Update {
  const UpdateChatMember({
    required this.chatId,
    required this.actorUserId,
    required this.date,
    this.inviteLink,
    required this.oldChatMember,
    required this.newChatMember,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [actorUserId] Identifier of the user, changing the rights
  final int actorUserId;

  /// [date] Point in time (Unix timestamp) when the user rights was changed
  final int date;

  /// [inviteLink] If user has joined the chat using an invite link, the invite
  /// link; may be null
  final ChatInviteLink? inviteLink;

  /// [oldChatMember] Previous chat member
  final ChatMember oldChatMember;

  /// [newChatMember] New chat member
  final ChatMember newChatMember;

  static const String constructor = 'updateChatMember';

  static UpdateChatMember? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatMember(
      chatId: json['chat_id'],
      actorUserId: json['actor_user_id'],
      date: json['date'],
      inviteLink: ChatInviteLink.fromJson(json['invite_link']),
      oldChatMember: ChatMember.fromJson(json['old_chat_member'])!,
      newChatMember: ChatMember.fromJson(json['new_chat_member'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'actor_user_id': actorUserId,
        'date': date,
        'invite_link': inviteLink?.toJson(),
        'old_chat_member': oldChatMember.toJson(),
        'new_chat_member': newChatMember.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
