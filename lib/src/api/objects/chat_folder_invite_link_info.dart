import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about an invite link to a chat folder
@immutable
class ChatFolderInviteLinkInfo extends TdObject {
  const ChatFolderInviteLinkInfo({
    required this.chatFolderInfo,
    required this.missingChatIds,
    required this.addedChatIds,
  });

  /// [chatFolderInfo] Basic information about the chat folder; chat folder
  /// identifier will be 0 if the user didn't have the chat folder yet
  final ChatFolderInfo chatFolderInfo;

  /// [missingChatIds] Identifiers of the chats from the link, which aren't
  /// added to the folder yet
  final List<int> missingChatIds;

  /// [addedChatIds] Identifiers of the chats from the link, which are added to
  /// the folder already
  final List<int> addedChatIds;

  static const String constructor = 'chatFolderInviteLinkInfo';

  static ChatFolderInviteLinkInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatFolderInviteLinkInfo(
      chatFolderInfo: ChatFolderInfo.fromJson(
          json['chat_folder_info'] as Map<String, dynamic>?)!,
      missingChatIds: List<int>.from(
          ((json['missing_chat_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
      addedChatIds: List<int>.from(
          ((json['added_chat_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_folder_info': chatFolderInfo.toJson(),
        'missing_chat_ids': missingChatIds.map((item) => item).toList(),
        'added_chat_ids': addedChatIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
