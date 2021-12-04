import '../tdapi.dart';

/// Returns pending join requests in a chat
/// Returns [ChatJoinRequests]
class GetChatJoinRequests extends TdFunction {
  GetChatJoinRequests(
      {required this.chatId,
      required this.inviteLink,
      required this.query,
      this.offsetRequest,
      required this.limit});

  /// [chatId] Chat identifier
  final int chatId;

  /// [inviteLink] Invite link for which to return join requests. If empty, all
  /// join requests will be returned. Requires administrator privileges and
  /// can_invite_users right in the chat for own links and owner privileges for
  /// other links
  final String inviteLink;

  /// [query] A query to search for in the first names, last names and usernames
  /// of the users to return
  final String query;

  /// [offsetRequest] A chat join request from which to return next requests;
  /// pass null to get results from the beginning
  final ChatJoinRequest? offsetRequest;

  /// [limit] The maximum number of chat join requests to return
  final int limit;

  static const String CONSTRUCTOR = 'getChatJoinRequests';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'invite_link': this.inviteLink,
        'query': this.query,
        'offset_request': this.offsetRequest?.toJson(),
        'limit': this.limit,
        '@type': CONSTRUCTOR
      };
}
