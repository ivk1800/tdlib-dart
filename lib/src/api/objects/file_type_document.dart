import '../tdapi.dart';

/// The file is a document
class FileTypeDocument extends FileType {
  const FileTypeDocument();

  static const String CONSTRUCTOR = 'fileTypeDocument';

  static FileTypeDocument? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeDocument();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
