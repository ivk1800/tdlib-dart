import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

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

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
