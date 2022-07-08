import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Handles all pending join requests for a given link in a chat
/// Returns [Ok]
@immutable
class ProcessChatJoinRequests extends TdFunction {
  const ProcessChatJoinRequests({
    required this.chatId,
    required this.inviteLink,
    required this.approve,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [inviteLink] Invite link for which to process join requests. If empty, all
  /// join requests will be processed. Requires administrator privileges and
  /// can_invite_users right in the chat for own links and owner privileges for
  /// other links
  final String inviteLink;

  /// [approve] Pass true to approve all requests; pass false to decline them
  final bool approve;

  static const String constructor = 'processChatJoinRequests';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'invite_link': inviteLink,
        'approve': approve,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
