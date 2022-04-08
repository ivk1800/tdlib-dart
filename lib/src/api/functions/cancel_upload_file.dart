import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Stops the uploading of a file. Supported only for files uploaded by using
/// uploadFile. For other files the behavior is undefined
/// Returns [Ok]
@immutable
class CancelUploadFile extends TdFunction {
  const CancelUploadFile({
    required this.fileId,
  });

  /// [fileId] Identifier of the file to stop uploading
  final int fileId;

  static const String constructor = 'cancelUploadFile';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'file_id': fileId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
