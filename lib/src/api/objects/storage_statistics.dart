import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains the exact storage usage statistics split by chats and file type
@immutable
class StorageStatistics extends TdObject {
  const StorageStatistics({
    required this.size,
    required this.count,
    required this.byChat,
  });

  /// [size] Total size of files, in bytes
  final int size;

  /// [count] Total number of files
  final int count;

  /// [byChat] Statistics split by chats
  final List<StorageStatisticsByChat> byChat;

  static const String constructor = 'storageStatistics';

  static StorageStatistics? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StorageStatistics(
      size: json['size'],
      count: json['count'],
      byChat: List<StorageStatisticsByChat>.from((json['by_chat'] ?? [])
          .map((item) => StorageStatisticsByChat.fromJson(item))
          .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'size': size,
        'count': count,
        'by_chat': byChat.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
