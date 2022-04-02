import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Represents one language pack string
class LanguagePackString extends TdObject {
  LanguagePackString({required this.key, this.value});

  /// [key] String key
  final String key;

  /// [value] String value; pass null if the string needs to be taken from the
  /// built-in English language pack
  final LanguagePackStringValue? value;

  static const String CONSTRUCTOR = 'languagePackString';

  static LanguagePackString? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LanguagePackString(
        key: json['key'],
        value: LanguagePackStringValue.fromJson(json['value']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'key': this.key, 'value': this.value?.toJson(), '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
