import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Contains the storage usage statistics for a specific chat
class StorageStatisticsByChat extends TdObject {
  StorageStatisticsByChat(
      {required this.chatId,
      required this.size,
      required this.count,
      required this.byFileType});

  /// [chatId] Chat identifier; 0 if none
  final int chatId;

  /// [size] Total size of the files in the chat, in bytes
  final int size;

  /// [count] Total number of files in the chat
  final int count;

  /// [byFileType] Statistics split by file types
  final List<StorageStatisticsByFileType> byFileType;

  static const String CONSTRUCTOR = 'storageStatisticsByChat';

  static StorageStatisticsByChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StorageStatisticsByChat(
        chatId: json['chat_id'],
        size: json['size'],
        count: json['count'],
        byFileType: List<StorageStatisticsByFileType>.from(
            (json['by_file_type'] ?? [])
                .map((item) => StorageStatisticsByFileType.fromJson(item))
                .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'size': this.size,
        'count': this.count,
        'by_file_type': byFileType.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
