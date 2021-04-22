import '../tdapi.dart';

/// The translation of the document contains an error. The error is considered
/// resolved when the list of files changes
class InputPassportElementErrorSourceTranslationFiles
    extends InputPassportElementErrorSource {
  InputPassportElementErrorSourceTranslationFiles({required this.fileHashes});

  /// [fileHashes] Current hashes of all files with the translation
  final List<String> fileHashes;

  static const String CONSTRUCTOR =
      'inputPassportElementErrorSourceTranslationFiles';

  static InputPassportElementErrorSourceTranslationFiles? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementErrorSourceTranslationFiles(
        fileHashes: List<String>.from(
            (json['file_hashes'] ?? []).map((item) => item).toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'file_hashes': fileHashes.map((item) => item).toList(),
        '@type': CONSTRUCTOR
      };
}
