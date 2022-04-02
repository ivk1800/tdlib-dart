import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Asynchronously uploads a file to the cloud without sending it in a
/// message. updateFile will be used to notify about upload progress and
/// successful completion of the upload. The file will not have a persistent
/// remote identifier until it will be sent in a message
/// Returns [File]
class UploadFile extends TdFunction {
  UploadFile({required this.file, this.fileType, required this.priority});

  /// [file] File to upload
  final InputFile file;

  /// [fileType] File type; pass null if unknown
  final FileType? fileType;

  /// [priority] Priority of the upload (1-32). The higher the priority, the
  /// earlier the file will be uploaded. If the priorities of two files are
  /// equal, then the first one for which uploadFile was called will be uploaded
  /// first
  final int priority;

  static const String CONSTRUCTOR = 'uploadFile';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'file': this.file.toJson(),
        'file_type': this.fileType?.toJson(),
        'priority': this.priority,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
