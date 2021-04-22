import '../tdapi.dart';

/// A personal document, containing some information about a user
class PersonalDocument extends TdObject {
  PersonalDocument({required this.files, required this.translation});

  /// [files] List of files containing the pages of the document
  final List<DatedFile> files;

  /// [translation] List of files containing a certified English translation of
  /// the document
  final List<DatedFile> translation;

  static const String CONSTRUCTOR = 'personalDocument';

  static PersonalDocument? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PersonalDocument(
        files: List<DatedFile>.from((json['files'] ?? [])
            .map((item) => DatedFile.fromJson(item))
            .toList()),
        translation: List<DatedFile>.from((json['translation'] ?? [])
            .map((item) => DatedFile.fromJson(item))
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
}
