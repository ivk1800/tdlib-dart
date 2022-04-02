import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The file was sent to a secret chat (the file type is not known to the
/// server)
class FileTypeSecret extends FileType {
  const FileTypeSecret();

  static const String CONSTRUCTOR = 'fileTypeSecret';

  static FileTypeSecret? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeSecret();
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
