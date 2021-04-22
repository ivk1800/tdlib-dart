import '../tdapi.dart';

/// One of files with the translation of the document contains an error. The
/// error will be considered resolved when the file changes
class PassportElementErrorSourceTranslationFile
    extends PassportElementErrorSource {
  PassportElementErrorSourceTranslationFile({required this.fileIndex});

  /// [fileIndex] Index of a file with the error
  final int fileIndex;

  static const String CONSTRUCTOR = 'passportElementErrorSourceTranslationFile';

  static PassportElementErrorSourceTranslationFile? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementErrorSourceTranslationFile(
        fileIndex: json['file_index']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'file_index': this.fileIndex, '@type': CONSTRUCTOR};
}
