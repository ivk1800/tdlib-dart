import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains the storage usage statistics for a specific chat
@immutable
class StorageStatisticsByChat extends TdObject {
  const StorageStatisticsByChat({
    required this.chatId,
    required this.size,
    required this.count,
    required this.byFileType,
  });

  /// [chatId] Chat identifier; 0 if none
  final int chatId;

  /// [size] Total size of the files in the chat, in bytes
  final int size;

  /// [count] Total number of files in the chat
  final int count;

  /// [byFileType] Statistics split by file types
  final List<StorageStatisticsByFileType> byFileType;

  static const String constructor = 'storageStatisticsByChat';

  static StorageStatisticsByChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StorageStatisticsByChat(
      chatId: json['chat_id'] as int,
      size: json['size'] as int,
      count: json['count'] as int,
      byFileType: List<StorageStatisticsByFileType>.from(
          ((json['by_file_type'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => StorageStatisticsByFileType.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'size': size,
        'count': count,
        'by_file_type': byFileType.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
