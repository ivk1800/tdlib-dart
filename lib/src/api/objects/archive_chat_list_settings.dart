import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains settings for automatic moving of chats to and from the Archive
/// chat lists
@immutable
class ArchiveChatListSettings extends TdObject {
  const ArchiveChatListSettings({
    required this.archiveAndMuteNewChatsFromUnknownUsers,
    required this.keepUnmutedChatsArchived,
    required this.keepChatsFromFoldersArchived,
  });

  /// [archiveAndMuteNewChatsFromUnknownUsers] True, if new chats from
  /// non-contacts will be automatically archived and muted. Can be set to true
  /// only if the option "can_archive_and_mute_new_chats_from_unknown_users" is
  /// true
  final bool archiveAndMuteNewChatsFromUnknownUsers;

  /// [keepUnmutedChatsArchived] True, if unmuted chats will be kept in the
  /// Archive chat list when they get a new message
  final bool keepUnmutedChatsArchived;

  /// [keepChatsFromFoldersArchived] True, if unmuted chats, that are always
  /// included or pinned in a folder, will be kept in the Archive chat list when
  /// they get a new message. Ignored if keep_unmuted_chats_archived == true
  final bool keepChatsFromFoldersArchived;

  static const String constructor = 'archiveChatListSettings';

  static ArchiveChatListSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ArchiveChatListSettings(
      archiveAndMuteNewChatsFromUnknownUsers:
          json['archive_and_mute_new_chats_from_unknown_users'] as bool,
      keepUnmutedChatsArchived: json['keep_unmuted_chats_archived'] as bool,
      keepChatsFromFoldersArchived:
          json['keep_chats_from_folders_archived'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'archive_and_mute_new_chats_from_unknown_users':
            archiveAndMuteNewChatsFromUnknownUsers,
        'keep_unmuted_chats_archived': keepUnmutedChatsArchived,
        'keep_chats_from_folders_archived': keepChatsFromFoldersArchived,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
