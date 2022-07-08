import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A file was removed from the file download list. This update is sent only
/// after file download list is loaded for the first time
@immutable
class UpdateFileRemovedFromDownloads extends Update {
  const UpdateFileRemovedFromDownloads({
    required this.fileId,
    required this.counts,
  });

  /// [fileId] File identifier
  final int fileId;

  /// [counts] New number of being downloaded and recently downloaded files
  /// found
  final DownloadedFileCounts counts;

  static const String constructor = 'updateFileRemovedFromDownloads';

  static UpdateFileRemovedFromDownloads? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateFileRemovedFromDownloads(
      fileId: json['file_id'],
      counts: DownloadedFileCounts.fromJson(json['counts'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'file_id': fileId,
        'counts': counts.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
