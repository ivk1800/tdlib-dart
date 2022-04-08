import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The file is a file from Secure storage used for storing Telegram Passport
/// files
@immutable
class FileTypeSecure extends FileType {
  const FileTypeSecure();

  static const String constructor = 'fileTypeSecure';

  static FileTypeSecure? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeSecure();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
