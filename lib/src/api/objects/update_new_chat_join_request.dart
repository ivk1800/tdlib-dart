import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A user sent a join request to a chat; for bots only
class UpdateNewChatJoinRequest extends Update {
  UpdateNewChatJoinRequest(
      {required this.chatId, required this.request, this.inviteLink});

  /// [chatId] Chat identifier
  final int chatId;

  /// [request] Join request
  final ChatJoinRequest request;

  /// [inviteLink] The invite link, which was used to send join request; may be
  /// null
  final ChatInviteLink? inviteLink;

  static const String CONSTRUCTOR = 'updateNewChatJoinRequest';

  static UpdateNewChatJoinRequest? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewChatJoinRequest(
        chatId: json['chat_id'],
        request: ChatJoinRequest.fromJson(json['request'])!,
        inviteLink: ChatInviteLink.fromJson(json['invite_link']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'request': this.request.toJson(),
        'invite_link': this.inviteLink?.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
