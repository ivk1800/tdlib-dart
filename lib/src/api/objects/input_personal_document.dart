import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A personal document to be saved to Telegram Passport
@immutable
class InputPersonalDocument extends TdObject {
  const InputPersonalDocument({
    required this.files,
    required this.translation,
  });

  /// [files] List of files containing the pages of the document
  final List<InputFile> files;

  /// [translation] List of files containing a certified English translation of
  /// the document
  final List<InputFile> translation;

  static const String constructor = 'inputPersonalDocument';

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
          .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'files': files.map((item) => item.toJson()).toList(),
        'translation': translation.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
