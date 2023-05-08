import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A list of chats added to a chat folder
@immutable
class ChatListFolder extends ChatList {
  const ChatListFolder({
    required this.chatFolderId,
  });

  /// [chatFolderId] Chat folder identifier
  final int chatFolderId;

  static const String constructor = 'chatListFolder';

  static ChatListFolder? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatListFolder(
      chatFolderId: json['chat_folder_id'] as int,
    );
  }

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
