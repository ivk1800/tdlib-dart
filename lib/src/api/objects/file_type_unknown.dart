import '../tdapi.dart';

/// The file type is not yet known
class FileTypeUnknown extends FileType {
  const FileTypeUnknown();

  static const String CONSTRUCTOR = 'fileTypeUnknown';

  static FileTypeUnknown? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeUnknown();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
