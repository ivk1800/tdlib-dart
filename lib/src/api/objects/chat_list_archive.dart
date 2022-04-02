import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A list of chats usually located at the top of the main chat list. Unmuted
/// chats are automatically moved from the Archive to the Main chat list when
/// a new message arrives
class ChatListArchive extends ChatList {
  const ChatListArchive();

  static const String CONSTRUCTOR = 'chatListArchive';

  static ChatListArchive? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatListArchive();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
