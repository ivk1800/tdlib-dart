import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A personal document to be saved to Telegram Passport
class InputPersonalDocument extends TdObject {
  InputPersonalDocument({required this.files, required this.translation});

  /// [files] List of files containing the pages of the document
  final List<InputFile> files;

  /// [translation] List of files containing a certified English translation of
  /// the document
  final List<InputFile> translation;

  static const String CONSTRUCTOR = 'inputPersonalDocument';

  static InputPersonalDocument? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPersonalDocument(
        files: List<InputFile>.from((json['files'] ?? [])
            .map((item) => InputFile.fromJson(item))
            .toList()),
        translation: List<InputFile>.from((json['translation'] ?? [])
            .map((item) => InputFile.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'files': files.map((item) => item.toJson()).toList(),
        'translation': translation.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
