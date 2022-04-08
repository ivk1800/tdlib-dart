import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The file is a profile photo
@immutable
class FileTypeProfilePhoto extends FileType {
  const FileTypeProfilePhoto();

  static const String constructor = 'fileTypeProfilePhoto';

  static FileTypeProfilePhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeProfilePhoto();
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
