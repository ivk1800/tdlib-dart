import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Number of unread chats, i.e. with unread messages or marked as unread, has
/// changed. This update is sent only if the message database is used
@immutable
class UpdateUnreadChatCount extends Update {
  const UpdateUnreadChatCount({
    required this.chatList,
    required this.totalCount,
    required this.unreadCount,
    required this.unreadUnmutedCount,
    required this.markedAsUnreadCount,
    required this.markedAsUnreadUnmutedCount,
  });

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

  static const String constructor = 'updateUnreadChatCount';

  static UpdateUnreadChatCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateUnreadChatCount(
      chatList: ChatList.fromJson(json['chat_list'] as Map<String, dynamic>?)!,
      totalCount: json['total_count'] as int,
      unreadCount: json['unread_count'] as int,
      unreadUnmutedCount: json['unread_unmuted_count'] as int,
      markedAsUnreadCount: json['marked_as_unread_count'] as int,
      markedAsUnreadUnmutedCount: json['marked_as_unread_unmuted_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_list': chatList.toJson(),
        'total_count': totalCount,
        'unread_count': unreadCount,
        'unread_unmuted_count': unreadUnmutedCount,
        'marked_as_unread_count': markedAsUnreadCount,
        'marked_as_unread_unmuted_count': markedAsUnreadUnmutedCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
