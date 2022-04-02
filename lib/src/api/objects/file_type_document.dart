import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The file is a document
class FileTypeDocument extends FileType {
  const FileTypeDocument();

  static const String CONSTRUCTOR = 'fileTypeDocument';

  static FileTypeDocument? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeDocument();
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
