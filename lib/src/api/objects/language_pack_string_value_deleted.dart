import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A deleted language pack string, the value must be taken from the built-in
/// English language pack
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

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
