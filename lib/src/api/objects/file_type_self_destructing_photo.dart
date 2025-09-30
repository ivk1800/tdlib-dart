import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The file is a self-destructing photo in a private chat
@immutable
class FileTypeSelfDestructingPhoto extends FileType {
  const FileTypeSelfDestructingPhoto();

  static const String constructor = 'fileTypeSelfDestructingPhoto';

  static FileTypeSelfDestructingPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeSelfDestructingPhoto();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
