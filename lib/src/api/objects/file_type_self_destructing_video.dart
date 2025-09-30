import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The file is a self-destructing video in a private chat
@immutable
class FileTypeSelfDestructingVideo extends FileType {
  const FileTypeSelfDestructingVideo();

  static const String constructor = 'fileTypeSelfDestructingVideo';

  static FileTypeSelfDestructingVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeSelfDestructingVideo();
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
