import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Removes a file from the file download list
/// Returns [Ok]
@immutable
class RemoveFileFromDownloads extends TdFunction {
  const RemoveFileFromDownloads({
    required this.fileId,
    required this.deleteFromCache,
  });

  /// [fileId] Identifier of the downloaded file
  final int fileId;

  /// [deleteFromCache] Pass true to delete the file from the TDLib file cache
  final bool deleteFromCache;

  static const String constructor = 'removeFileFromDownloads';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'file_id': fileId,
        'delete_from_cache': deleteFromCache,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
