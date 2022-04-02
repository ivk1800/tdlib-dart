import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Number of unread messages in a chat list has changed. This update is sent
/// only if the message database is used
class UpdateUnreadMessageCount extends Update {
  UpdateUnreadMessageCount(
      {required this.chatList,
      required this.unreadCount,
      required this.unreadUnmutedCount});

  /// [chatList] The chat list with changed number of unread messages
  final ChatList chatList;

  /// [unreadCount] Total number of unread messages
  final int unreadCount;

  /// [unreadUnmutedCount] Total number of unread messages in unmuted chats
  final int unreadUnmutedCount;

  static const String CONSTRUCTOR = 'updateUnreadMessageCount';

  static UpdateUnreadMessageCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateUnreadMessageCount(
        chatList: ChatList.fromJson(json['chat_list'])!,
        unreadCount: json['unread_count'],
        unreadUnmutedCount: json['unread_unmuted_count']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_list': this.chatList.toJson(),
        'unread_count': this.unreadCount,
        'unread_unmuted_count': this.unreadUnmutedCount,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
