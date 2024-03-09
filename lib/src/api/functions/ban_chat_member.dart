import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Bans a member in a chat; requires can_restrict_members administrator
/// right. Members can't be banned in private or secret chats. In supergroups
/// and channels, the user will not be able to return to the group on their
/// own using invite links, etc., unless unbanned first
/// Returns [Ok]
@immutable
class BanChatMember extends TdFunction {
  const BanChatMember({
    required this.chatId,
    required this.memberId,
    required this.bannedUntilDate,
    required this.revokeMessages,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [memberId] Member identifier
  final MessageSender memberId;

  /// [bannedUntilDate] Point in time (Unix timestamp) when the user will be
  /// unbanned; 0 if never. If the user is banned for more than 366 days or for
  /// less than 30 seconds from the current time, the user is considered to be
  /// banned forever. Ignored in basic groups and if a chat is banned
  final int bannedUntilDate;

  /// [revokeMessages] Pass true to delete all messages in the chat for the user
  /// that is being removed. Always true for supergroups and channels
  final bool revokeMessages;

  static const String constructor = 'banChatMember';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'member_id': memberId.toJson(),
        'banned_until_date': bannedUntilDate,
        'revoke_messages': revokeMessages,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
