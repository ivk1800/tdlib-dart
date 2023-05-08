import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the order of chat folders
/// Returns [Ok]
@immutable
class ReorderChatFolders extends TdFunction {
  const ReorderChatFolders({
    required this.chatFolderIds,
    required this.mainChatListPosition,
  });

  /// [chatFolderIds] Identifiers of chat folders in the new correct order
  final List<int> chatFolderIds;

  /// [mainChatListPosition] Position of the main chat list among chat folders,
  /// 0-based. Can be non-zero only for Premium users
  final int mainChatListPosition;

  static const String constructor = 'reorderChatFolders';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_folder_ids': chatFolderIds.map((item) => item).toList(),
        'main_chat_list_position': mainChatListPosition,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
