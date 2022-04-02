import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

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

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
