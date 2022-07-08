import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Removes all files from the file download list
/// Returns [Ok]
@immutable
class RemoveAllFilesFromDownloads extends TdFunction {
  const RemoveAllFilesFromDownloads({
    required this.onlyActive,
    required this.onlyCompleted,
    required this.deleteFromCache,
  });

  /// [onlyActive] Pass true to remove only active downloads, including paused
  final bool onlyActive;

  /// [onlyCompleted] Pass true to remove only completed downloads
  final bool onlyCompleted;

  /// [deleteFromCache] Pass true to delete the file from the TDLib file cache
  final bool deleteFromCache;

  static const String constructor = 'removeAllFilesFromDownloads';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'only_active': onlyActive,
        'only_completed': onlyCompleted,
        'delete_from_cache': deleteFromCache,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
