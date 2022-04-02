import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Downloads a file from the cloud. Download progress and completion of the
/// download will be notified through updateFile updates
/// Returns [File]
class DownloadFile extends TdFunction {
  DownloadFile(
      {required this.fileId,
      required this.priority,
      required this.offset,
      required this.limit,
      required this.synchronous});

  /// [fileId] Identifier of the file to download
  final int fileId;

  /// [priority] Priority of the download (1-32). The higher the priority, the
  /// earlier the file will be downloaded. If the priorities of two files are
  /// equal, then the last one for which downloadFile was called will be
  /// downloaded first
  final int priority;

  /// [offset] The starting position from which the file needs to be downloaded
  final int offset;

  /// [limit] Number of bytes which need to be downloaded starting from the
  /// "offset" position before the download will automatically be canceled; use
  /// 0 to download without a limit
  final int limit;

  /// [synchronous] If false, this request returns file state just after the
  /// download has been started. If true, this request returns file state only
  /// after. the download has succeeded, has failed, has been canceled or a new
  /// downloadFile request with different offset/limit parameters was sent
  final bool synchronous;

  static const String CONSTRUCTOR = 'downloadFile';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'file_id': this.fileId,
        'priority': this.priority,
        'offset': this.offset,
        'limit': this.limit,
        'synchronous': this.synchronous,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
