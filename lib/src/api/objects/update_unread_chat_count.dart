import '../tdapi.dart';

/// Number of unread chats, i.e. with unread messages or marked as unread, has
/// changed. This update is sent only if the message database is used
class UpdateUnreadChatCount extends Update {
  UpdateUnreadChatCount(
      {required this.chatList,
      required this.totalCount,
      required this.unreadCount,
      required this.unreadUnmutedCount,
      required this.markedAsUnreadCount,
      required this.markedAsUnreadUnmutedCount});

  /// [chatList] The chat list with changed number of unread messages
  final ChatList chatList;

  /// [totalCount] Approximate total number of chats in the chat list
  final int totalCount;

  /// [unreadCount] Total number of unread chats
  final int unreadCount;

  /// [unreadUnmutedCount] Total number of unread unmuted chats
  final int unreadUnmutedCount;

  /// [markedAsUnreadCount] Total number of chats marked as unread
  final int markedAsUnreadCount;

  /// [markedAsUnreadUnmutedCount] Total number of unmuted chats marked as
  /// unread
  final int markedAsUnreadUnmutedCount;

  static const String CONSTRUCTOR = 'updateUnreadChatCount';

  static UpdateUnreadChatCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateUnreadChatCount(
        chatList: ChatList.fromJson(json['chat_list'])!,
        totalCount: json['total_count'],
        unreadCount: json['unread_count'],
        unreadUnmutedCount: json['unread_unmuted_count'],
        markedAsUnreadCount: json['marked_as_unread_count'],
        markedAsUnreadUnmutedCount: json['marked_as_unread_unmuted_count']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_list': this.chatList.toJson(),
        'total_count': this.totalCount,
        'unread_count': this.unreadCount,
        'unread_unmuted_count': this.unreadUnmutedCount,
        'marked_as_unread_count': this.markedAsUnreadCount,
        'marked_as_unread_unmuted_count': this.markedAsUnreadUnmutedCount,
        '@type': CONSTRUCTOR
      };
}
