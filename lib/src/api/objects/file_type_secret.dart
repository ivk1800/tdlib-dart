import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The file was sent to a secret chat (the file type is not known to the
/// server)
@immutable
class FileTypeSecret extends FileType {
  const FileTypeSecret();

  static const String constructor = 'fileTypeSecret';

  static FileTypeSecret? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeSecret();
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
