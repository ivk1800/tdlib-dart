import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// One of files with the translation of the document contains an error. The
/// error will be considered resolved when the file changes
@immutable
class PassportElementErrorSourceTranslationFile
    extends PassportElementErrorSource {
  const PassportElementErrorSourceTranslationFile({
    required this.fileIndex,
  });

  /// [fileIndex] Index of a file with the error
  final int fileIndex;

  static const String constructor = 'passportElementErrorSourceTranslationFile';

  static PassportElementErrorSourceTranslationFile? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementErrorSourceTranslationFile(
      fileIndex: json['file_index'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'file_index': fileIndex,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
