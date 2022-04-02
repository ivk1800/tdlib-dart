import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Stops the uploading of a file. Supported only for files uploaded by using
/// uploadFile. For other files the behavior is undefined
/// Returns [Ok]
class CancelUploadFile extends TdFunction {
  CancelUploadFile({required this.fileId});

  /// [fileId] Identifier of the file to stop uploading
  final int fileId;

  static const String CONSTRUCTOR = 'cancelUploadFile';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'file_id': this.fileId, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
