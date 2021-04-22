import '../tdapi.dart';

/// The file is a thumbnail of another file
class FileTypeThumbnail extends FileType {
  const FileTypeThumbnail();

  static const String CONSTRUCTOR = 'fileTypeThumbnail';

  static FileTypeThumbnail? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeThumbnail();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
