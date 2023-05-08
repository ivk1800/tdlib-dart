import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns new chats added to a shareable chat folder by its owner. The
/// method must be called at most once in
/// getOption("chat_folder_new_chats_update_period") for the given chat folder
/// Returns [Chats]
@immutable
class GetChatFolderNewChats extends TdFunction {
  const GetChatFolderNewChats({
    required this.chatFolderId,
  });

  /// [chatFolderId] Chat folder identifier
  final int chatFolderId;

  static const String constructor = 'getChatFolderNewChats';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_folder_id': chatFolderId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
