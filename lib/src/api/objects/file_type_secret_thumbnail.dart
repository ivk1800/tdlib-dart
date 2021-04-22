import '../tdapi.dart';

/// The file is a thumbnail of a file from a secret chat
class FileTypeSecretThumbnail extends FileType {
  const FileTypeSecretThumbnail();

  static const String CONSTRUCTOR = 'fileTypeSecretThumbnail';

  static FileTypeSecretThumbnail? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeSecretThumbnail();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
