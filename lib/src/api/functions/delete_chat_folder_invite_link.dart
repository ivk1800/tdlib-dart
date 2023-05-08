import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Deletes an invite link for a chat folder
/// Returns [Ok]
@immutable
class DeleteChatFolderInviteLink extends TdFunction {
  const DeleteChatFolderInviteLink({
    required this.chatFolderId,
    required this.inviteLink,
  });

  /// [chatFolderId] Chat folder identifier
  final int chatFolderId;

  /// [inviteLink] Invite link to be deleted
  final String inviteLink;

  static const String constructor = 'deleteChatFolderInviteLink';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_folder_id': chatFolderId,
        'invite_link': inviteLink,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
