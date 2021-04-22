import '../tdapi.dart';

/// A deleted language pack string, the value should be taken from the
/// built-in english language pack
class LanguagePackStringValueDeleted extends LanguagePackStringValue {
  const LanguagePackStringValueDeleted();

  static const String CONSTRUCTOR = 'languagePackStringValueDeleted';

  static LanguagePackStringValueDeleted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const LanguagePackStringValueDeleted();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
