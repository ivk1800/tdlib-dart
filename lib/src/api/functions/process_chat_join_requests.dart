import '../tdapi.dart';

/// Handles all pending join requests for a given link in a chat
/// Returns [Ok]
class ProcessChatJoinRequests extends TdFunction {
  ProcessChatJoinRequests(
      {required this.chatId, required this.inviteLink, required this.approve});

  /// [chatId] Chat identifier
  final int chatId;

  /// [inviteLink] Invite link for which to process join requests. If empty, all
  /// join requests will be processed. Requires administrator privileges and
  /// can_invite_users right in the chat for own links and owner privileges for
  /// other links
  final String inviteLink;

  /// [approve] True, if the requests are approved. Otherwise the requests are
  /// declived
  final bool approve;

  static const String CONSTRUCTOR = 'processChatJoinRequests';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'invite_link': this.inviteLink,
        'approve': this.approve,
        '@type': CONSTRUCTOR
      };
}
