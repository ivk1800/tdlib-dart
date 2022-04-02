import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Contains the storage usage statistics for a specific file type
class StorageStatisticsByFileType extends TdObject {
  StorageStatisticsByFileType(
      {required this.fileType, required this.size, required this.count});

  /// [fileType] File type
  final FileType fileType;

  /// [size] Total size of the files, in bytes
  final int size;

  /// [count] Total number of files
  final int count;

  static const String CONSTRUCTOR = 'storageStatisticsByFileType';

  static StorageStatisticsByFileType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StorageStatisticsByFileType(
        fileType: FileType.fromJson(json['file_type'])!,
        size: json['size'],
        count: json['count']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'file_type': this.fileType.toJson(),
        'size': this.size,
        'count': this.count,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
