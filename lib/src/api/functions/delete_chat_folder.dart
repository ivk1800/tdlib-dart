import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Deletes existing chat folder
/// Returns [Ok]
@immutable
class DeleteChatFolder extends TdFunction {
  const DeleteChatFolder({
    required this.chatFolderId,
    required this.leaveChatIds,
  });

  /// [chatFolderId] Chat folder identifier
  final int chatFolderId;

  /// [leaveChatIds] Identifiers of the chats to leave. The chats must be pinned
  /// or always included in the folder
  final List<int> leaveChatIds;

  static const String constructor = 'deleteChatFolder';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_folder_id': chatFolderId,
        'leave_chat_ids': leaveChatIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
