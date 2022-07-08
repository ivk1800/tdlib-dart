import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A file was added to the file download list. This update is sent only after
/// file download list is loaded for the first time
@immutable
class UpdateFileAddedToDownloads extends Update {
  const UpdateFileAddedToDownloads({
    required this.fileDownload,
    required this.counts,
  });

  /// [fileDownload] The added file download
  final FileDownload fileDownload;

  /// [counts] New number of being downloaded and recently downloaded files
  /// found
  final DownloadedFileCounts counts;

  static const String constructor = 'updateFileAddedToDownloads';

  static UpdateFileAddedToDownloads? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateFileAddedToDownloads(
      fileDownload: FileDownload.fromJson(json['file_download'])!,
      counts: DownloadedFileCounts.fromJson(json['counts'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'file_download': fileDownload.toJson(),
        'counts': counts.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
