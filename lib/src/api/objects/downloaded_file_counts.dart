import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains number of being downloaded and recently downloaded files found
@immutable
class DownloadedFileCounts extends TdObject {
  const DownloadedFileCounts({
    required this.activeCount,
    required this.pausedCount,
    required this.completedCount,
  });

  /// [activeCount] Number of active file downloads found, including paused
  final int activeCount;

  /// [pausedCount] Number of paused file downloads found
  final int pausedCount;

  /// [completedCount] Number of completed file downloads found
  final int completedCount;

  static const String constructor = 'downloadedFileCounts';

  static DownloadedFileCounts? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DownloadedFileCounts(
      activeCount: json['active_count'] as int,
      pausedCount: json['paused_count'] as int,
      completedCount: json['completed_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'active_count': activeCount,
        'paused_count': pausedCount,
        'completed_count': completedCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
