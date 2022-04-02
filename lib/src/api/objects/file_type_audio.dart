import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The file is an audio file
class FileTypeAudio extends FileType {
  const FileTypeAudio();

  static const String CONSTRUCTOR = 'fileTypeAudio';

  static FileTypeAudio? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeAudio();
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
