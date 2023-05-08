import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Creates a new invite link for a chat folder. A link can be created for a
/// chat folder if it has only pinned and included chats
/// Returns [ChatFolderInviteLink]
@immutable
class CreateChatFolderInviteLink extends TdFunction {
  const CreateChatFolderInviteLink({
    required this.chatFolderId,
    required this.name,
    required this.chatIds,
  });

  /// [chatFolderId] Chat folder identifier
  final int chatFolderId;

  /// [name] Name of the link; 0-32 characters
  final String name;

  /// [chatIds] Identifiers of chats to be accessible by the invite link. Use
  /// getChatsForChatFolderInviteLink to get suitable chats. Basic groups will
  /// be automatically converted to supergroups before link creation
  final List<int> chatIds;

  static const String constructor = 'createChatFolderInviteLink';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_folder_id': chatFolderId,
        'name': name,
        'chat_ids': chatIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
