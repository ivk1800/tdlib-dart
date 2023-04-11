import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of downloaded files, found by a search
@immutable
class FoundFileDownloads extends TdObject {
  const FoundFileDownloads({
    required this.totalCounts,
    required this.files,
    required this.nextOffset,
  });

  /// [totalCounts] Total number of suitable files, ignoring offset
  final DownloadedFileCounts totalCounts;

  /// [files] The list of files
  final List<FileDownload> files;

  /// [nextOffset] The offset for the next request. If empty, there are no more
  /// results
  final String nextOffset;

  static const String constructor = 'foundFileDownloads';

  static FoundFileDownloads? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FoundFileDownloads(
      totalCounts: DownloadedFileCounts.fromJson(
          json['total_counts'] as Map<String, dynamic>?)!,
      files: List<FileDownload>.from(
          ((json['files'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => FileDownload.fromJson(item))
              .toList()),
      nextOffset: json['next_offset'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_counts': totalCounts.toJson(),
        'files': files.map((item) => item.toJson()).toList(),
        'next_offset': nextOffset,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
