import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Process new chats added to a shareable chat folder by its owner
/// Returns [Ok]
@immutable
class ProcessChatFolderNewChats extends TdFunction {
  const ProcessChatFolderNewChats({
    required this.chatFolderId,
    required this.addedChatIds,
  });

  /// [chatFolderId] Chat folder identifier
  final int chatFolderId;

  /// [addedChatIds] Identifiers of the new chats, which are added to the chat
  /// folder. The chats are automatically joined if they aren't joined yet
  final List<int> addedChatIds;

  static const String constructor = 'processChatFolderNewChats';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_folder_id': chatFolderId,
        'added_chat_ids': addedChatIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
