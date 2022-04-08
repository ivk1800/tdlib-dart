import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Creates a new invite link for a chat. Available for basic groups,
/// supergroups, and channels. Requires administrator privileges and
/// can_invite_users right in the chat
/// Returns [ChatInviteLink]
@immutable
class CreateChatInviteLink extends TdFunction {
  const CreateChatInviteLink({
    required this.chatId,
    required this.name,
    required this.expirationDate,
    required this.memberLimit,
    required this.createsJoinRequest,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [name] Invite link name; 0-32 characters
  final String name;

  /// [expirationDate] Point in time (Unix timestamp) when the link will expire;
  /// pass 0 if never
  final int expirationDate;

  /// [memberLimit] The maximum number of chat members that can join the chat
  /// via the link simultaneously; 0-99999; pass 0 if not limited
  final int memberLimit;

  /// [createsJoinRequest] True, if the link only creates join request. If true,
  /// member_limit must not be specified
  final bool createsJoinRequest;

  static const String constructor = 'createChatInviteLink';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'name': name,
        'expiration_date': expirationDate,
        'member_limit': memberLimit,
        'creates_join_request': createsJoinRequest,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
