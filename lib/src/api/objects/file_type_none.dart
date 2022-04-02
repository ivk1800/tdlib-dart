import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The data is not a file
class FileTypeNone extends FileType {
  const FileTypeNone();

  static const String CONSTRUCTOR = 'fileTypeNone';

  static FileTypeNone? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeNone();
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
