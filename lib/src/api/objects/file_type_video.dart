import '../tdapi.dart';

/// The file is a video
class FileTypeVideo extends FileType {
  const FileTypeVideo();

  static const String CONSTRUCTOR = 'fileTypeVideo';

  static FileTypeVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeVideo();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
