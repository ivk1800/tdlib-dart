import '../tdapi.dart';

/// The translation of the document contains an error. The error will be
/// considered resolved when the list of translation files changes
class PassportElementErrorSourceTranslationFiles
    extends PassportElementErrorSource {
  const PassportElementErrorSourceTranslationFiles();

  static const String CONSTRUCTOR =
      'passportElementErrorSourceTranslationFiles';

  static PassportElementErrorSourceTranslationFiles? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementErrorSourceTranslationFiles();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
