import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The translation of the document contains an error. The error is considered
/// resolved when the list of files changes
@immutable
class InputPassportElementErrorSourceTranslationFiles
    extends InputPassportElementErrorSource {
  const InputPassportElementErrorSourceTranslationFiles({
    required this.fileHashes,
  });

  /// [fileHashes] Current hashes of all files with the translation
  final List<String> fileHashes;

  static const String constructor =
      'inputPassportElementErrorSourceTranslationFiles';

  static InputPassportElementErrorSourceTranslationFiles? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementErrorSourceTranslationFiles(
      fileHashes: List<String>.from(
          ((json['file_hashes'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'file_hashes': fileHashes.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
