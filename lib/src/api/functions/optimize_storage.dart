import '../tdapi.dart';

/// Optimizes storage usage, i.e. deletes some files and returns new storage
/// usage statistics. Secret thumbnails can't be deleted
/// Returns [StorageStatistics]
class OptimizeStorage extends TdFunction {
  OptimizeStorage(
      {required this.size,
      required this.ttl,
      required this.count,
      required this.immunityDelay,
      required this.fileTypes,
      required this.chatIds,
      required this.excludeChatIds,
      required this.returnDeletedFileStatistics,
      required this.chatLimit});

  /// [size] Limit on the total size of files after deletion, in bytes. Pass -1
  /// to use the default limit
  final int size;

  /// [ttl] Limit on the time that has passed since the last time a file was
  /// accessed (or creation time for some filesystems). Pass -1 to use the
  /// default limit
  final int ttl;

  /// [count] Limit on the total count of files after deletion. Pass -1 to use
  /// the default limit
  final int count;

  /// [immunityDelay] The amount of time after the creation of a file during
  /// which it can't be deleted, in seconds. Pass -1 to use the default value
  final int immunityDelay;

  /// [fileTypes] If non-empty, only files with the given types are considered.
  /// By default, all types except thumbnails, profile photos, stickers and
  /// wallpapers are deleted
  final List<FileType> fileTypes;

  /// [chatIds] If non-empty, only files from the given chats are considered.
  /// Use 0 as chat identifier to delete files not belonging to any chat (e.g.,
  /// profile photos)
  final List<int> chatIds;

  /// [excludeChatIds] If non-empty, files from the given chats are excluded.
  /// Use 0 as chat identifier to exclude all files not belonging to any chat
  /// (e.g., profile photos)
  final List<int> excludeChatIds;

  /// [returnDeletedFileStatistics] Pass true if statistics about the files that
  /// were deleted must be returned instead of the whole storage usage
  /// statistics. Affects only returned statistics
  final bool returnDeletedFileStatistics;

  /// [chatLimit] Same as in getStorageStatistics. Affects only returned
  /// statistics
  final int chatLimit;

  static const String CONSTRUCTOR = 'optimizeStorage';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'size': this.size,
        'ttl': this.ttl,
        'count': this.count,
        'immunity_delay': this.immunityDelay,
        'file_types': fileTypes.map((item) => item.toJson()).toList(),
        'chat_ids': chatIds.map((item) => item).toList(),
        'exclude_chat_ids': excludeChatIds.map((item) => item).toList(),
        'return_deleted_file_statistics': this.returnDeletedFileStatistics,
        'chat_limit': this.chatLimit,
        '@type': CONSTRUCTOR
      };
}
