import '../tdapi.dart';

/// The file is an animation
class FileTypeAnimation extends FileType {
  const FileTypeAnimation();

  static const String CONSTRUCTOR = 'fileTypeAnimation';

  static FileTypeAnimation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeAnimation();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
