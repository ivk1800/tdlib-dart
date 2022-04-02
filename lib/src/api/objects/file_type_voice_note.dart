import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The file is a voice note
class FileTypeVoiceNote extends FileType {
  const FileTypeVoiceNote();

  static const String CONSTRUCTOR = 'fileTypeVoiceNote';

  static FileTypeVoiceNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeVoiceNote();
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
