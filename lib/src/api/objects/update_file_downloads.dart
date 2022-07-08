import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The state of the file download list has changed
@immutable
class UpdateFileDownloads extends Update {
  const UpdateFileDownloads({
    required this.totalSize,
    required this.totalCount,
    required this.downloadedSize,
  });

  /// [totalSize] Total size of files in the file download list, in bytes
  final int totalSize;

  /// [totalCount] Total number of files in the file download list
  final int totalCount;

  /// [downloadedSize] Total downloaded size of files in the file download list,
  /// in bytes
  final int downloadedSize;

  static const String constructor = 'updateFileDownloads';

  static UpdateFileDownloads? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateFileDownloads(
      totalSize: json['total_size'],
      totalCount: json['total_count'],
      downloadedSize: json['downloaded_size'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_size': totalSize,
        'total_count': totalCount,
        'downloaded_size': downloadedSize,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
