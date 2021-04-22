import '../tdapi.dart';

/// The file is a profile photo
class FileTypeProfilePhoto extends FileType {
  const FileTypeProfilePhoto();

  static const String CONSTRUCTOR = 'fileTypeProfilePhoto';

  static FileTypeProfilePhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeProfilePhoto();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
