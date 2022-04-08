import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A deleted language pack string, the value must be taken from the built-in
/// English language pack
@immutable
class LanguagePackStringValueDeleted extends LanguagePackStringValue {
  const LanguagePackStringValueDeleted();

  static const String constructor = 'languagePackStringValueDeleted';

  static LanguagePackStringValueDeleted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const LanguagePackStringValueDeleted();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
