import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a user or a chat as a member of another chat
@immutable
class ChatMember extends TdObject {
  const ChatMember({
    required this.memberId,
    required this.inviterUserId,
    required this.joinedChatDate,
    required this.status,
  });

  /// [memberId] Identifier of the chat member. Currently, other chats can be
  /// only Left or Banned. Only supergroups and channels can have other chats as
  /// Left or Banned members and these chats must be supergroups or channels
  final MessageSender memberId;

  /// [inviterUserId] Identifier of a user that invited/promoted/banned this
  /// member in the chat; 0 if unknown
  final int inviterUserId;

  /// [joinedChatDate] Point in time (Unix timestamp) when the user joined/was
  /// promoted/was banned in the chat
  final int joinedChatDate;

  /// [status] Status of the member in the chat
  final ChatMemberStatus status;

  static const String constructor = 'chatMember';

  static ChatMember? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatMember(
      memberId:
          MessageSender.fromJson(json['member_id'] as Map<String, dynamic>?)!,
      inviterUserId: json['inviter_user_id'] as int,
      joinedChatDate: json['joined_chat_date'] as int,
      status:
          ChatMemberStatus.fromJson(json['status'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'member_id': memberId.toJson(),
        'inviter_user_id': inviterUserId,
        'joined_chat_date': joinedChatDate,
        'status': status.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
