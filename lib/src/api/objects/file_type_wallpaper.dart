import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

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

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
