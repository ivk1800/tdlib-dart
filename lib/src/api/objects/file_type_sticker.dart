import '../tdapi.dart';

/// The file is a sticker
class FileTypeSticker extends FileType {
  const FileTypeSticker();

  static const String CONSTRUCTOR = 'fileTypeSticker';

  static FileTypeSticker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeSticker();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
