import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns information about an invite link. Requires administrator
/// privileges and can_invite_users right in the chat to get own links and
/// owner privileges to get other links
/// Returns [ChatInviteLink]
class GetChatInviteLink extends TdFunction {
  GetChatInviteLink({required this.chatId, required this.inviteLink});

  /// [chatId] Chat identifier
  final int chatId;

  /// [inviteLink] Invite link to get
  final String inviteLink;

  static const String CONSTRUCTOR = 'getChatInviteLink';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'invite_link': this.inviteLink,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
