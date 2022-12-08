import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a filter of user chats
@immutable
class ChatFilter extends TdObject {
  const ChatFilter({
    required this.title,
    required this.iconName,
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

  /// [title] The title of the filter; 1-12 characters without line feeds
  final String title;

  /// [iconName] The chosen icon name for short filter representation. If
  /// non-empty, must be one of "All", "Unread", "Unmuted", "Bots", "Channels",
  /// "Groups", "Private", "Custom", "Setup", "Cat", "Crown", "Favorite",
  /// "Flower", "Game", "Home", "Love", "Mask", "Party", "Sport", "Study",
  /// "Trade", "Travel", "Work", "Airplane", "Book", "Light", "Like", "Money",
  /// "Note", "Palette".. If empty, use getChatFilterDefaultIconName to get
  /// default icon name for the filter
  final String iconName;

  /// [pinnedChatIds] The chat identifiers of pinned chats in the filtered chat
  /// list. There can be up to getOption("chat_filter_chosen_chat_count_max")
  /// pinned and always included non-secret chats and the same number of secret
  /// chats, but the limit can be increased with Telegram Premium
  final List<int> pinnedChatIds;

  /// [includedChatIds] The chat identifiers of always included chats in the
  /// filtered chat list. There can be up to
  /// getOption("chat_filter_chosen_chat_count_max") pinned and always included
  /// non-secret chats and the same number of secret chats, but the limit can be
  /// increased with Telegram Premium
  final List<int> includedChatIds;

  /// [excludedChatIds] The chat identifiers of always excluded chats in the
  /// filtered chat list. There can be up to
  /// getOption("chat_filter_chosen_chat_count_max") always excluded non-secret
  /// chats and the same number of secret chats, but the limit can be increased
  /// with Telegram Premium
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

  static const String constructor = 'chatFilter';

  static ChatFilter? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatFilter(
      title: json['title'],
      iconName: json['icon_name'],
      pinnedChatIds: List<int>.from(
          (json['pinned_chat_ids'] ?? []).map((item) => item).toList()),
      includedChatIds: List<int>.from(
          (json['included_chat_ids'] ?? []).map((item) => item).toList()),
      excludedChatIds: List<int>.from(
          (json['excluded_chat_ids'] ?? []).map((item) => item).toList()),
      excludeMuted: json['exclude_muted'],
      excludeRead: json['exclude_read'],
      excludeArchived: json['exclude_archived'],
      includeContacts: json['include_contacts'],
      includeNonContacts: json['include_non_contacts'],
      includeBots: json['include_bots'],
      includeGroups: json['include_groups'],
      includeChannels: json['include_channels'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'title': title,
        'icon_name': iconName,
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
