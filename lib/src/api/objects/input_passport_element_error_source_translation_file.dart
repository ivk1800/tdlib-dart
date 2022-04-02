import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// One of the files containing the translation of the document contains an
/// error. The error is considered resolved when the file with the translation
/// changes
class InputPassportElementErrorSourceTranslationFile
    extends InputPassportElementErrorSource {
  InputPassportElementErrorSourceTranslationFile({required this.fileHash});

  /// [fileHash] Current hash of the file containing the translation
  final String fileHash;

  static const String CONSTRUCTOR =
      'inputPassportElementErrorSourceTranslationFile';

  static InputPassportElementErrorSourceTranslationFile? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementErrorSourceTranslationFile(
        fileHash: json['file_hash']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'file_hash': this.fileHash, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
