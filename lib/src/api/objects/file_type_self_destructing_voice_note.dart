import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The file is a self-destructing voice note in a private chat
@immutable
class FileTypeSelfDestructingVoiceNote extends FileType {
  const FileTypeSelfDestructingVoiceNote();

  static const String constructor = 'fileTypeSelfDestructingVoiceNote';

  static FileTypeSelfDestructingVoiceNote? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const FileTypeSelfDestructingVoiceNote();
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
