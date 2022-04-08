import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A list of chats usually located at the top of the main chat list. Unmuted
/// chats are automatically moved from the Archive to the Main chat list when
/// a new message arrives
@immutable
class ChatListArchive extends ChatList {
  const ChatListArchive();

  static const String constructor = 'chatListArchive';

  static ChatListArchive? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatListArchive();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
