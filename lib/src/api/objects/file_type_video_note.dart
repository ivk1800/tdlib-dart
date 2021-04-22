import '../tdapi.dart';

/// The file is a video note
class FileTypeVideoNote extends FileType {
  const FileTypeVideoNote();

  static const String CONSTRUCTOR = 'fileTypeVideoNote';

  static FileTypeVideoNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeVideoNote();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
