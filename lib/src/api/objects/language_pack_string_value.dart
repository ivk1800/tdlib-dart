import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents the value of a string in a language pack
@immutable
abstract class LanguagePackStringValue extends TdObject {
  const LanguagePackStringValue();

  static const String constructor = 'languagePackStringValue';

  /// Inherited by:
  /// [LanguagePackStringValueOrdinary]
  /// [LanguagePackStringValuePluralized]
  /// [LanguagePackStringValueDeleted]
  static LanguagePackStringValue? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case LanguagePackStringValueOrdinary.constructor:
        return LanguagePackStringValueOrdinary.fromJson(json);
      case LanguagePackStringValuePluralized.constructor:
        return LanguagePackStringValuePluralized.fromJson(json);
      case LanguagePackStringValueDeleted.constructor:
        return LanguagePackStringValueDeleted.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
