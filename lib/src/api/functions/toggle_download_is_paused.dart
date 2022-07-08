import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes pause state of a file in the file download list
/// Returns [Ok]
@immutable
class ToggleDownloadIsPaused extends TdFunction {
  const ToggleDownloadIsPaused({
    required this.fileId,
    required this.isPaused,
  });

  /// [fileId] Identifier of the downloaded file
  final int fileId;

  /// [isPaused] Pass true if the download is paused
  final bool isPaused;

  static const String constructor = 'toggleDownloadIsPaused';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'file_id': fileId,
        'is_paused': isPaused,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
