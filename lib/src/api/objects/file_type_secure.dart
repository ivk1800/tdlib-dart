import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

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

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
