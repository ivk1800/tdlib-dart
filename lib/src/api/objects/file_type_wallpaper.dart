import '../tdapi.dart';

/// The file is a wallpaper or a background pattern
class FileTypeWallpaper extends FileType {
  const FileTypeWallpaper();

  static const String CONSTRUCTOR = 'fileTypeWallpaper';

  static FileTypeWallpaper? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeWallpaper();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
