import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The list of chat folders or a chat folder has changed
@immutable
class UpdateChatFolders extends Update {
  const UpdateChatFolders({
    required this.chatFolders,
    required this.mainChatListPosition,
    required this.areTagsEnabled,
  });

  /// [chatFolders] The new list of chat folders
  final List<ChatFolderInfo> chatFolders;

  /// [mainChatListPosition] Position of the main chat list among chat folders,
  /// 0-based
  final int mainChatListPosition;

  /// [areTagsEnabled] True, if folder tags are enabled
  final bool areTagsEnabled;

  static const String constructor = 'updateChatFolders';

  static UpdateChatFolders? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatFolders(
      chatFolders: List<ChatFolderInfo>.from(
          ((json['chat_folders'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => ChatFolderInfo.fromJson(item))
              .toList()),
      mainChatListPosition: json['main_chat_list_position'] as int,
      areTagsEnabled: json['are_tags_enabled'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_folders': chatFolders.map((item) => item.toJson()).toList(),
        'main_chat_list_position': mainChatListPosition,
        'are_tags_enabled': areTagsEnabled,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
