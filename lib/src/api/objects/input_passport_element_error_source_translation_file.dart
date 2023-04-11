import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// One of the files containing the translation of the document contains an
/// error. The error is considered resolved when the file with the translation
/// changes
@immutable
class InputPassportElementErrorSourceTranslationFile
    extends InputPassportElementErrorSource {
  const InputPassportElementErrorSourceTranslationFile({
    required this.fileHash,
  });

  /// [fileHash] Current hash of the file containing the translation
  final String fileHash;

  static const String constructor =
      'inputPassportElementErrorSourceTranslationFile';

  static InputPassportElementErrorSourceTranslationFile? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementErrorSourceTranslationFile(
      fileHash: json['file_hash'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'file_hash': fileHash,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
