import '../tdapi.dart';

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
}
