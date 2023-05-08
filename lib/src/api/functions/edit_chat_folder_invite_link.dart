import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Edits an invite link for a chat folder
/// Returns [ChatFolderInviteLink]
@immutable
class EditChatFolderInviteLink extends TdFunction {
  const EditChatFolderInviteLink({
    required this.chatFolderId,
    required this.inviteLink,
    required this.name,
    required this.chatIds,
  });

  /// [chatFolderId] Chat folder identifier
  final int chatFolderId;

  /// [inviteLink] Invite link to be edited
  final String inviteLink;

  /// [name] New name of the link; 0-32 characters
  final String name;

  /// [chatIds] New identifiers of chats to be accessible by the invite link.
  /// Use getChatsForChatFolderInviteLink to get suitable chats. Basic groups
  /// will be automatically converted to supergroups before link editing
  final List<int> chatIds;

  static const String constructor = 'editChatFolderInviteLink';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_folder_id': chatFolderId,
        'invite_link': inviteLink,
        'name': name,
        'chat_ids': chatIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
