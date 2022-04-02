import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Stops the downloading of a file. If a file has already been downloaded,
/// does nothing
/// Returns [Ok]
class CancelDownloadFile extends TdFunction {
  CancelDownloadFile({required this.fileId, required this.onlyIfPending});

  /// [fileId] Identifier of a file to stop downloading
  final int fileId;

  /// [onlyIfPending] Pass true to stop downloading only if it hasn't been
  /// started, i.e. request hasn't been sent to server
  final bool onlyIfPending;

  static const String CONSTRUCTOR = 'cancelDownloadFile';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'file_id': this.fileId,
        'only_if_pending': this.onlyIfPending,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
