import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The file is a thumbnail of a file from a secret chat
@immutable
class FileTypeSecretThumbnail extends FileType {
  const FileTypeSecretThumbnail();

  static const String constructor = 'fileTypeSecretThumbnail';

  static FileTypeSecretThumbnail? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeSecretThumbnail();
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
