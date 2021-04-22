import '../tdapi.dart';

/// The file is a photo
class FileTypePhoto extends FileType {
  const FileTypePhoto();

  static const String CONSTRUCTOR = 'fileTypePhoto';

  static FileTypePhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypePhoto();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
