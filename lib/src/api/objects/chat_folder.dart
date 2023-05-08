import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a folder for user chats
@immutable
class ChatFolder extends TdObject {
  const ChatFolder({
    required this.title,
    this.icon,
    required this.isShareable,
    required this.pinnedChatIds,
    required this.includedChatIds,
    required this.excludedChatIds,
    required this.excludeMuted,
    required this.excludeRead,
    required this.excludeArchived,
    required this.includeContacts,
    required this.includeNonContacts,
    required this.includeBots,
    required this.includeGroups,
    required this.includeChannels,
  });

  /// [title] The title of the folder; 1-12 characters without line feeds
  final String title;

  /// [icon] The chosen icon for the chat folder; may be null. If null, use
  /// getChatFolderDefaultIconName to get default icon name for the folder
  final ChatFolderIcon? icon;

  /// [isShareable] True, if at least one link has been created for the folder
  final bool isShareable;

  /// [pinnedChatIds] The chat identifiers of pinned chats in the folder. There
  /// can be up to getOption("chat_folder_chosen_chat_count_max") pinned and
  /// always included non-secret chats and the same number of secret chats, but
  /// the limit can be increased with Telegram Premium
  final List<int> pinnedChatIds;

  /// [includedChatIds] The chat identifiers of always included chats in the
  /// folder. There can be up to getOption("chat_folder_chosen_chat_count_max")
  /// pinned and always included non-secret chats and the same number of secret
  /// chats, but the limit can be increased with Telegram Premium
  final List<int> includedChatIds;

  /// [excludedChatIds] The chat identifiers of always excluded chats in the
  /// folder. There can be up to getOption("chat_folder_chosen_chat_count_max")
  /// always excluded non-secret chats and the same number of secret chats, but
  /// the limit can be increased with Telegram Premium
  final List<int> excludedChatIds;

  /// [excludeMuted] True, if muted chats need to be excluded
  final bool excludeMuted;

  /// [excludeRead] True, if read chats need to be excluded
  final bool excludeRead;

  /// [excludeArchived] True, if archived chats need to be excluded
  final bool excludeArchived;

  /// [includeContacts] True, if contacts need to be included
  final bool includeContacts;

  /// [includeNonContacts] True, if non-contact users need to be included
  final bool includeNonContacts;

  /// [includeBots] True, if bots need to be included
  final bool includeBots;

  /// [includeGroups] True, if basic groups and supergroups need to be included
  final bool includeGroups;

  /// [includeChannels] True, if channels need to be included
  final bool includeChannels;

  static const String constructor = 'chatFolder';

  static ChatFolder? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatFolder(
      title: json['title'] as String,
      icon: ChatFolderIcon.fromJson(json['icon'] as Map<String, dynamic>?),
      isShareable: json['is_shareable'] as bool,
      pinnedChatIds: List<int>.from(
          ((json['pinned_chat_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
      includedChatIds: List<int>.from(
          ((json['included_chat_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
      excludedChatIds: List<int>.from(
          ((json['excluded_chat_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
      excludeMuted: json['exclude_muted'] as bool,
      excludeRead: json['exclude_read'] as bool,
      excludeArchived: json['exclude_archived'] as bool,
      includeContacts: json['include_contacts'] as bool,
      includeNonContacts: json['include_non_contacts'] as bool,
      includeBots: json['include_bots'] as bool,
      includeGroups: json['include_groups'] as bool,
      includeChannels: json['include_channels'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'title': title,
        'icon': icon?.toJson(),
        'is_shareable': isShareable,
        'pinned_chat_ids': pinnedChatIds.map((item) => item).toList(),
        'included_chat_ids': includedChatIds.map((item) => item).toList(),
        'excluded_chat_ids': excludedChatIds.map((item) => item).toList(),
        'exclude_muted': excludeMuted,
        'exclude_read': excludeRead,
        'exclude_archived': excludeArchived,
        'include_contacts': includeContacts,
        'include_non_contacts': includeNonContacts,
        'include_bots': includeBots,
        'include_groups': includeGroups,
        'include_channels': includeChannels,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
