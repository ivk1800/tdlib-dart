import '../tdapi.dart';

/// The file is a file from Secure storage used for storing Telegram Passport
/// files
class FileTypeSecure extends FileType {
  const FileTypeSecure();

  static const String CONSTRUCTOR = 'fileTypeSecure';

  static FileTypeSecure? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeSecure();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
