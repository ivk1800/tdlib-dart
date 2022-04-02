import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Represents the value of a string in a language pack
abstract class LanguagePackStringValue extends TdObject {
  const LanguagePackStringValue();

  static const String CONSTRUCTOR = 'languagePackStringValue';

  /// Inherited by:
  /// [LanguagePackStringValueOrdinary]
  /// [LanguagePackStringValuePluralized]
  /// [LanguagePackStringValueDeleted]
  static LanguagePackStringValue? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case LanguagePackStringValueOrdinary.CONSTRUCTOR:
        return LanguagePackStringValueOrdinary.fromJson(json);
      case LanguagePackStringValuePluralized.CONSTRUCTOR:
        return LanguagePackStringValuePluralized.fromJson(json);
      case LanguagePackStringValueDeleted.CONSTRUCTOR:
        return LanguagePackStringValueDeleted.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
